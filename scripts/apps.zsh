#!/bin/zsh

################################################################################
# Script Name	: Apps Setup
# Description	: This script installs general applications that make using
#                 Mac so much easier.
################################################################################

# Make sure Homebrew is up-to-date
brew update && brew upgrade && brew cleanup

# Install Rectangle
# TODO: Find a way to load settings file
brew install --cask rectangle

# Install Alfred
# TODO: Find a way to load settings file
brew install --cask alfred

# Install Spotify
brew install --cask spotify
