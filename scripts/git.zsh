#!/bin/zsh

####################################################################################################
# This script installs git packages and configurations                                             #
####################################################################################################

# Install git packages

brew install diff-so-fancy      # Replacement for git diff
brew install git                # Installing git

# Install git client application

brew cask install gitkraken     # Replacement for Github Desktop

# Configure git

git config --global user.name "Khoa Tran"                               # Configure name
git config --global user.email "trananh_khoa@outlook.com"               # Configure email
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"     # Use custom git diff

# Alias to show git structure

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
