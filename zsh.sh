#! /usr/bin/env bash

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting";

# Copy zsh custom theme
cp ./init/custom-theme.zsh-theme "${ZSH_CUSTOM:${HOME}/.oh-my-zsh/custom}/themes";
