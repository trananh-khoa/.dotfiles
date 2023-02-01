#!/bin/zsh

################################################################################
# Script Name	: Git Setup
# Description	: This script configures git.
################################################################################

# Make sure Homebrew is up-to-date
brew update && brew upgrade && brew cleanup

# Install git (if not already)
brew install git

# Replace diff
brew install diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

# Configure username and email
git config --global user.name "trananh-khoa"
git config --global user.email "trananh_khoa@outlook.com"

# Configure default editor
git config --global core.editor "nvim"
