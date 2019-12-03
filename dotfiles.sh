#!/bin/bash

dot_list=(".bashrc" ".zshrc" ".bash_profile" ".tmux.conf" ".vimrc")

for file in $dot_list; do
	ln -sv "$PWD/$file" "$HOME"
done
		
