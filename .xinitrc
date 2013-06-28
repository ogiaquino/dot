#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
#exec startxfce4 --with-ck-launch
exec openbox-session
#[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
#[[ -f ~/.Xresources ]] && nitrogen --restore
#[[ -f ~/.Xresources ]] && xset -b
#[[ -f ~/.Xresources ]] && xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55
#[[ -f ~/.Xresources ]] && ~/.conky.sh 
