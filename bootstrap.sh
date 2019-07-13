#! /usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")" || exit 1;

git pull origin master;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "deps.sh" \
		--exclude "macos.sh" \
		--exclude "zsh.sh" \
		--exclude ".gitconfig" \
		--exclude ".gitignore" \
		-avh --no-perms . ~;
	source "${HOME}/.zprofile";
}

if [ "$1" == "--force" ] || [ "$1" == "-f" ]; then
	doIt;
else
	read -rp "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
