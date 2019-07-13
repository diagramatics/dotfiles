#! /usr/bin/env bash

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting";
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Copy zsh custom theme
sudo rsync -avh --no-perms ./init/custom-theme.zsh-theme "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/themes";
