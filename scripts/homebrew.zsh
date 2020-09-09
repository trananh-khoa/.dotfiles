#!/bin/zsh

####################################################################################################
# This script installs Homebrew packages and MacOS applications                                    #
####################################################################################################

# Install Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install general command line packages

brew install ack                        # Replacement for grep
brew install autoenv                    # Automatic enviornment activation
brew install tree                       # Quick look into file structures
brew install vim                        # Lightweight text editor

# Install applications

brew cask install alfred                # Replacement for spotlight
brew cask install cheatsheet            # Key bindings displayer
brew cask install discord               # Video conferencing software
brew cask install google-chrome         # Internet browser
brew cask install iterm2                # Replacement for terminal
brew cask install rectangle             # Window placement manager
brew cask install spotify               # Music player
brew cask install visual-studio-code    # Text editor
