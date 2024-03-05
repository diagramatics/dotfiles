#! /usr/bin/env bash

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Nix
# export PATH="/nix/var/nix/profiles/default/bin:$PATH"
# if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then . "$HOME/.nix-profile/etc/profile.d/nix.sh"; fi # added by Nix installer

# Cargo/rust
export PATH="$HOME/.cargo/bin:$PATH"

# Enable github autocompletion
eval "$(gh completion --shell zsh)"

# (The below instructions are intended for common
# shell setups. See the README for more guidance
# if they don't apply and/or don't work for you.)

# Add pyenv executable to PATH and
# enable shims by adding the following
# to ~/.profile and ~/.zprofile:

# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"

