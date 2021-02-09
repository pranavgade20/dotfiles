#!/bin/bash

# invoke global X session script
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

Wallpaper() {
  feh --bg-fill $HOME/Pictures/wallpaper.jpg
  cp $HOME/Pictures/wallpaper.jpg $HOME/Pictures/current.jpg
  wget -O $HOME/Pictures/wallpaper.jpg https://picsum.photos/1024/768
  while [[ "$?" -gt "0" ]]; do
    sleep 60;
    wget -O $HOME/Pictures/wallpaper.jpg https://picsum.photos/1024/768;
  done
}
Wallpaper &

Day() {
  printf `date "+%e" | sed -e 's/\ //'`

  case `date +%d` in
    01|21|31) printf "${day}st";;
    02|22)    printf "${day}nd";;
    03|23)    printf "${day}rd";;
    *)       printf "${day}th";;
  esac
}

while true; do
  xsetroot -name "`date \"+%a, %b \`Day\` %k:%M\"`"
  sleep 15
done &

# Music() {
#   sleep 10
#   audacious -H # headless audacious
#   audacious -p
# }
# Music &

export _JAVA_AWT_WM_NONREPARENTING=1
alias ltspice="wine .wine/drive_c/Program\ Files/LTC/LTspiceXVII/XVIIx64.exe"

xmodmap -e 'keycode 108 = BackSpace BackSpace BackSpace BackSpace'

exec dwm
