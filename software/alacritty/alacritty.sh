#!/bin/bash

apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 -y

git clone https://github.com/alacritty/alacritty.git ~/Documents/code/git/alacritty
cd ~/Documents/code/git/alacritty

cargo build --release

cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
desktop-file-install extra/linux/Alacritty.desktop
update-desktop-database


wget https://github.com/dracula/alacritty/archive/master.zip

