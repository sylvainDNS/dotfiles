#!/bin/sh

while true;
do
  feh --bg-scale "$(find $HOME/Workspace/dotfiles/wallpaper -type f -name '*.jpg' -o -name '*.png' | shuf -n 1)"
  sleep 30s
done &