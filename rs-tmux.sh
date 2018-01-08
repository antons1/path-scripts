#!/bin/sh
tmux new-session -d -s 'rsat'
tmux split-window -h 'crs'
tmux new-window 'rdat'
tmux split-window -h 'crd'
tmux -2 attach-session -d 
