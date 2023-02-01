#!/bin/zsh

################################################################################
# Script Name	: Homebrew Setup
# Description	: This script installs Homebrew and installs useful packages.
#                 Note that other scripts will require this script to be run
#                 first. Restart the terminal and switch to iTerm2 after running
#                 this script.
################################################################################

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to PATH for the remainder of the script to work
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> $HOME/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install GNU core utilities (replace macOS outdated ones)
# Add to PATH to use normal names: PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"
brew install coreutils

# Install GNU find utilities
# Add to PATH to use normal names: PATH="$(brew --prefix)/opt/findutils/libexec/gnubin:$PATH"
brew install findutils

# Install recent versions of macOS tools
brew install gnu-sed
brew install grep
brew install neovim

# Install useful binaries
brew install ack
brew install git
brew install tree

# Install iTerm2 (other scripts require iTerm2 to be installed)
brew install --cask iterm2

# Remove outdated versions from the cellar
brew cleanup
