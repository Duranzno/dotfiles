#!/usr/bin/env bash

set -euo pipefail
# install from apt
sudo pacman -S yay
yay -S git curl ripgrep tar apt-transport-https \
	alacritty \
	visual-studio-code-bin \
	gitkraken \
	github-cli \ 
	copyq \
	kubectl \
 	helm \
 	authy \
 	espanso-bin \
 	sublime-text-dev \
 	discord \
 	slack \
 	authy \  
# Enabling Milestones
./gh-milestones-setup.bash
