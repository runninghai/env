#!/bin/bash

mkdir -p neovim
pushd neovim

wget "https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz"
tar xzvf nvim-linux64.tar.gz

cp -r ./nvim-linux64/bin/* /usr/local/bin/
cp -r ./nvim-linux64/lib/* /usr/local/lib/
cp -r ./nvim-linux64/share/* /usr/local/share/

echo "alias vim=\"nvim\"" >> ~/.bashrc

apt install -y xclip

popd

# ccls
apt install ccls 
