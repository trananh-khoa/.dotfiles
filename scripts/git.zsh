#!/bin/zsh

####################################################################################################
# This script installs git packages and configurations                                             #
####################################################################################################

# Install git packages

brew install diff-so-fancy      # Replacement for git diff
brew install git                # Installing git

# Configure git

git config --global user.name "Khoa Tran"                               # Configure name
git config --global user.email "trananh_khoa@outlook.com"               # Configure email
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"     # Use custom git diff
