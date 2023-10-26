#!/bin/bash

session="backend"

tmux new-session -d -s $session

window=0
tmux rename-window -t $session:$window 'cl'
#open in the root of work directory

window=1
tmux new-window -t $session:$window -n 'code'
#setup nvim with tabs for coding
#tmux send-keys -t $session:$window 'vim package.json'

window=2
tmux new-window -t $session:$window -n 'tests'
#unit tests, acceptanece tests

window=3
tmux new-window -t $session:$window -n 'git'
#SCM tool

window=4
tmux new-window -t $session:$window -n 'docs'
#Documentation, Open API endpoints, API testing

window=5
tmux new-window -t $session:$window -n 'server'
#ssh, integration, deployment
#tmux send-keys -t $session:$window 'npm run serve'

window=6
tmux new-window -t $session:$window -n 'dbm'
#database managment
#tmux send-keys -t $session:$window 'npm run serve'
