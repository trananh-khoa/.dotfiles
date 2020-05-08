#!/bin/zsh

####################################################################################################
# This script configures the iTerm terminal                                                        #
####################################################################################################

# Install iTerm2 colour schemes

git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git

# Set preferences folder

defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string '~/.dotfiles/configurations/'
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Remove iTerm2 colour schemes

rm -rf ~/iTerm2-Color-Schemes
