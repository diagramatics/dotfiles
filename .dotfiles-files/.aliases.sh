#!/usr/bin/env bash

alias g="git"
alias ls="ls -lah"
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../../"
alias ~="cd ~" # `cd` is probably faster to type though

# Enable hub aliasing
eval "$(hub alias -s)"

# Enable github aliasing
eval "$(gh alias --shell zsh)"
