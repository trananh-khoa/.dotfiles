#!/bin/zsh

####################################################################################################
# This script configures the iTerm terminal                                                        #
####################################################################################################

# Install iTerm2 colour schemes

git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git

# Install shell integration

curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh

# Set preferences folder

defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string '~/.dotfiles/configurations/'
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Remove iTerm2 colour schemes

rm -rf ~/iTerm2-Color-Schemes

# Install antigen

brew install antigen

# Install fonts

brew tap homebrew/cask-fonts
brew cask install font-meslolg-nerd-font
brew cask install font-saucecodepro-nerd-font
