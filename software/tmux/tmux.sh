#!/bin/bash
apt install tmux -y

cat > ~/.tmux.conf <<EOF
set -g default-terminal "xterm-256color"
set -g mouse on
set -g default-shell /bin/zsh

#up
bind-key k select-pane -U
#down
bind-key j select-pane -D
#left
bind-key h select-pane -L
#up
bind-key l select-pane -R
EOF
