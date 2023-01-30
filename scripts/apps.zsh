#!/bin/zsh

################################################################################
# Script Name	: Apps Setup
# Description	: This script installs general applications that make using
#                 Mac so much easier.
################################################################################

# Make sure Homebrew is up-to-date
brew update && brew upgrade && brew cleanup

# Install Rectangle
brew install --cask rectangle

# TODO: Find a way to load settings file

# Install Alfred
brew install --cask alfred
