#!/bin/zsh

################################################################################
# Script Name	: iTerm2 Setup
# Description	: This script sets up iTerm2 preferences and shell extensions.
#                 Note that this script should be run from iTerm2 (it is assumed
#                 that iTerm2 is already installed). Restart terminal after.
################################################################################

# Make sure Homebrew is up-to-date
brew update && brew upgrade && brew cleanup

# Install custom theme
open $HOME/.dotfiles/configurations/snazzy.itermcolors

# Set preferences folder
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string $HOME/.dotfiles/configurations/
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Install oh-mh-zsh plugin manager
# Plugins are specified in the .zshrc file
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install custom plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install powerlevel10k
# This will prompt installation of recommended font
# Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Symlink configurations
ln -sf ${HOME}/.dotfiles/configurations/.p10k.zsh ${HOME}/.p10k.zsh
ln -sf ${HOME}/.dotfiles/configurations/.zshrc ${HOME}/.zshrc
