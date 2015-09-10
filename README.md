tmux-status-scripts
===

few scripts to show host statuses on the tmux status bar.

These are mostly based on [this article](https://github.com/nakkaya/nakkaya.com/blob/03697cccf3d6fa9dda8db6dbf9764443d2431292/resources/posts/2014-01-05-tmux-configuration.org).

How to use
---

Clone this repository on your `$HOME` directory. Then put/replace these lines in
your `~/.tmux.conf` -

    set -g status-right-length 100
    set -g status-right '#(~/.tmux-status-scripts/cpuload.sh)#(~/.tmux-status-scripts/cputemp.sh)#(~/.tmux-status-scripts/netload.sh wlan0)#(date +"%a %b %_d %I:%M:%S")'

And run `tmux -u`.

![tmux status bar](http://i.imgur.com/BCUujiF.png)
