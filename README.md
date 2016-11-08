TTY-TimeAnnounce
==================

A *ShellScript* for TTY Time Announcement

# Quickstart

1. Just download the script and put it anywhere you want.
2. Edit variables. ( See *Variables* )
3. Schedule a `cron` job for the script.
4. Now, forget about it and have a cup of coffee! Time will tell.

# Variables

There are a few variables you *need* to edit.

- `TTY` 
 - writing to tty device (e.g. `/dev/pts/3`)
- `COLOR`
 - font color (default: `38;05;4`)

Open the script, and edit these values. You will find them at the top.


# Detailed Installation

First, place the script into any folder you want to. In this instruction, it is `/home/yasuna/local/bin`.

Then, open it and edit like this:


```shellsession
TTY=/dev/pts/3    # writing to tty device 
COLOR="38;05;1"   # font color (red)
```

Finally, set up a scheduled job using `crontab`. If you want announcement once every hour, it would be:

```
0 * * * * /home/yasuna/local/bin/announce.sh
```

Done! Enjoy!

-

original: [kadopoly/TimeAnnounceOjisan](https://github.com/kadopoly/TimeAnnounceOjisan)
