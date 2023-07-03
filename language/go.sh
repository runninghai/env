#!/bin/bash

wget https://go.dev/dl/go1.20.1.linux-amd64.tar.gz
tar zxvf go1.20.1.linux-amd64.tar.gz
mv go /usr/local/
rm go1.20.1.linux-amd64.tar.gz
echo "PATH=/usr/local/go/bin:\$PATH" >> ~/.zshrc
