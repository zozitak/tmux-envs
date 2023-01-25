#!/bin/bash

session="base"

tmux new-session -d -s $session

window="0"
tmux rename-window -t $session:$window 'c'

