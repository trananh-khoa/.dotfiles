#!/bin/zsh

################################################################################
# Script Name	: Python Setup
# Description	: This script sets up a Python environment.
################################################################################

# Make sure Homebrew is up-to-date
brew update && brew upgrade && brew cleanup

# Install pyenv (Python version manager)
# Need to handle lzma error: https://github.com/pyenv/pyenv/issues/1800
brew install xz
brew install pyenv

# Setup shell environment for pyenv
echo -e '\n# Pyenv configuration' >> ~/.zshrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
