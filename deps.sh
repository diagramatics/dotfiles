#!/usr/bin/env bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null

# Swap to zsh
brew install zsh
sudo sh -c "echo $(command -v zsh) >> /etc/shells"
sudo chsh -s "$(command -v zsh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install git
brew install fzf
brew install hub
brew install github
brew install thefuck
brew install git-lfs
brew install vim --override-system-vi
sh <(curl -L https://nixos.org/nix/install) --darwin-use-unencrypted-nix-store-volume
brew cask install iterm2
brew install pyenv

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | sh

nvm install node --reinstall-packages-from=node
nvm alias default node
npm install -g avn avn-nvm avn-n
npm install -g diff-so-fancy
npm install -g yarn

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
