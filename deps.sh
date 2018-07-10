ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.bash_profile
nvm install node --reinstall-packages-from=node
nvm alias default node
npm install -g avn avn-nvm avn-n
npm install -g diff-so-fancy

brew install hub
brew install thefuck
brew install vim --override-system-vi