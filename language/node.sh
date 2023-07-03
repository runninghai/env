#!/bin/bash

curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

npm config set registry http://registry.npmmirror.com

