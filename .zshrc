# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color"

# oh-my-zsh theme
ZSH_THEME="robbyrussell"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Path to $ZSH/custom?
ZSH_CUSTOM="$HOME/dotfiles/oh_my_zsh_custom"

plugins=(git tmux)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Source alias 
source $HOME/.aliases

# Source .scripts
source $HOME/.scripts

# Source .exports
source $HOME/.exports

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export VISUAL=vim
export EDITOR="$VISUAL"



