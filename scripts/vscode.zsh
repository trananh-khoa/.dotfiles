#!/bin/zsh

################################################################################
# Script Name	: VSCode Setup
# Description	: This script installs VSCode and installs generic extensions.
#                 Work-specific extensions can be installed separately depending
#                 on necessity. This script also syncs preferred settings.
################################################################################

# Make sure Homebrew is up-to-date
brew update && brew upgrade && brew cleanup

# Install VSCode
brew install --cask visual-studio-code

# Install generic extensions
code --install-extension eamodio.gitlens --force
code --install-extension streetsidesoftware.code-spell-checker --force
code --install-extension ChakrounAnas.turbo-console-log --force
code --install-extension GitHub.github-vscode-theme --force
code --install-extension vscode-icons-team.vscode-icons --force

# Sync settings
ln -sf $HOME/.dotfiles/configurations/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
