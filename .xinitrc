#!/bin/bash

# invoke global X session script
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

feh --bg-fill $HOME/Pictures/wallpaper.jpg
wget -O $HOME/Pictures/wallpaper.jpg https://picsum.photos/1024/768 &

Day() {
  printf `date "+%e" | sed -e 's/\ //'`

  case `date +%d` in
    1|21|31) printf "${day}st";;
    2|22)    printf "${day}nd";;
    3|23)    printf "${day}rd";;
    *)       printf "${day}th";;
  esac
}

while true; do
  xsetroot -name "`date \"+%a, %b \`Day\` %k:%M\"`"
  sleep 15
done &

Music() {
  audacious -H # headless audacious
  audacious -p
}
Music &

export _JAVA_AWT_WM_NONREPARENTING=1

exec dwm