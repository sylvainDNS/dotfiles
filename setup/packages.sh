#!/bin/sh

pacman -S --needed --noconfirm --noprogressbar \
  linux-headers \
  base-devel \
  zsh \ 
  curl \
  git \
  man-db \
  man-pages \
  alacritty \
  starship \
  lsd \
  arandr \
  docker \
  docker-compose \
  gnome-keyring \
  firefox-developer-edition

systemctl enable docker
systemctl start docker

cd /tmp && {
  git clone https://aur.archlinux.org/paru.git;
  cd paru;
  makepkg -si;
  cd -;
}

# Spotify gpg keys
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | gpg --import -

paru -S --skipreview \
  slack-desktop \
  spotify \
  noto-fonts \
  noto-fonts-cjk \
  noto-fonts-emoji \
  noto-fonts-extra
