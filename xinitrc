#!/bin/bash
#xcompmgr -c -f -D 5 &
dm="$(cat ~/.dm)"
if [ "$dm" = "mate" ]; then
 exec /usr/bin/mate-session
elif [ "$dm" = "lxde" ]; then
 exec /usr/bin/startlxde
elif [ "$dm" = "openbox" ]; then
 exec /usr/bin/openbox-session
fi

