#!/usr/bin/env bash

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# # Path to your oh-my-zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# export ZSH_THEME="custom-theme"

# Enable command auto-correction.
export ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
export COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty. This makes repository status
# check for large repositories much, much faster.
export DISABLE_UNTRACKED_FILES_DIRTY="true"

export DISABLE_LS_COLORS="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# export plugins=(git gitfast node macos yarn zsh-autosuggestions zsh-syntax-highlighting github)

# source "$ZSH/oh-my-zsh.sh"

# Enable bash completion
autoload -U +X bashcompinit && bashcompinit
autoload -Uz +X compinit && compinit

# Disable zsh autocorrect
unsetopt correct_all

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Setup fzf
# ---------
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Auto-completion
# ---------------
# [[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# fnm
export PATH="/Users/diagramatics/Library/Application Support/fnm:$PATH"
eval "`fnm env`"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# pipenv
export PATH="/Users/diagramatics/.local/bin:$PATH"

