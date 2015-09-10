tmux-status-scripts
===

few scripts to show host statuses on the tmux status bar.

These are mostly based on [this article](https://github.com/nakkaya/nakkaya.com/blob/03697cccf3d6fa9dda8db6dbf9764443d2431292/resources/posts/2014-01-05-tmux-configuration.org).

How to use
---

Clone this repository on your `$HOME` directory. Then put/replace these lines in
your `~/.tmux.conf` -

    set -g status-right-length 100
    set -g status-right '#(~/.tmux-status-scripts/cpuload.sh)#(~/.tmux-status-scripts/cputemp.sh)#(~/.tmux-status-scripts/netload.sh wlan0)#(~/.tmux-status-scripts/battery.sh)#(date +"%a %b %_d %I:%M:%S")'

And run `tmux -u` -

![tmux status bar](http://i.imgur.com/cVYX8tb.png)

> tmux attempts to guess if the terminal is likely to support UTF-8 by checking the first of the LC_ALL, LC_CTYPE and LANG environment variables to be set for the string "UTF-8". This is not always correct: the `-u` flag explicitly informs tmux that UTF-8 is supported.
