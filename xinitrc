#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
export GTK_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
export QT_IM_MODULE=fcitx

export DESKTOP_SESSION=gnome
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel' 

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
wmname LG3D
DEFAULTSESSION=awesome

case "$1" in
     awesome) exec awesome;;
     gnome|*) exec gnome-session ;;
     kde) exec startkde ;;
     *) exec $DEFAULTSESSION ;;
esac
