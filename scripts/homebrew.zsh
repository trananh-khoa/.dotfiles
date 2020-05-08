#!/bin/zsh

####################################################################################################
# This script installs Homebrew packages and MacOS applications                                    #
####################################################################################################

# Install Homebrew

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install general command line packages

brew install ack                        # Replacement for grep
brew install tree                       # Quick look into file structures
brew install vim                        # Lightweight text editor

# Install applications

brew cask install alfred                # Replacement for spotlight
brew cask install appcleaner            # App deleter
brew cask install cheatsheet            # Key bindings displayer
brew cask install google-chrome         # Internet browser
brew cask install iterm2                # Replacement for terminal
brew cask install rectangle             # Window placement manager
brew cask install visual-studio-code    # Text editor
