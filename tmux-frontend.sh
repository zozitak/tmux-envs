#!/bin/bash

session="frontend"

tmux new-session -d -s $session

window=0
tmux rename-window -t $session:$window 'zsh'
#open in the root of work directory

window=1
tmux new-window -t $session:$window -n 'code'
#start nvim 
tmux send-keys -t $session:$window 'nvim .' Enter

window=2
tmux new-window -t $session:$window -n 'test'
#unit tests, acceptanece tests
tmux send-keys -t $session:$window 'mkdir test && cd test || cd test' Enter

window=3
tmux new-window -t $session:$window -n 'git'
#SCM tool
tmux send-keys -t $session:$window 'git status' Enter
tmux send-keys -t $session:$window 'g tree' Enter

window=4
tmux new-window -t $session:$window -n 'docs'
#Documentation, Open API endpoints, API testing
tmux send-keys -t $session:$window 'mkdir docs && cd docs || cd docs' Enter

window=5
tmux new-window -t $session:$window -n 'server'
#ssh, integration, deployment
#tmux send-keys -t $session:$window 'live-server -p=5000' Enter

window=1
tmux select-window -t $session:$window
