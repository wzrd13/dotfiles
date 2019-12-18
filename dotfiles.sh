#!/bin/bash

dot_list=(".alias.sh" ".profile" ".bashrc" ".zshrc" ".bash_profile" ".tmux.conf" ".vimrc" ".gitconfig") 

for file in $dot_list; do
	ln -sv "$PWD/$file" "$HOME"
done
		
