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
brew install thefuck
brew install git-lfs
brew install vim --override-system-vi
brew install nix

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | sh

nvm install node --reinstall-packages-from=node
nvm alias default node
npm install -g avn avn-nvm avn-n
npm install -g diff-so-fancy
npm install -g yarn

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
