#!/bin/zsh

####################################################################################################
# This script installs python packages and configurations                                          #
####################################################################################################

# Install python packages

brew install pipenv
brew install pyenv

# Install latest Python and set as global

LATEST_PYTHON_VERSION="$(pyenv install --list | sed 's/^  //' | grep '^\d' | grep --invert-match 'dev\|a\|b' | tail -1)"
pyenv install ${LATEST_PYTHON_VERSION}
pyenv global ${LATEST_PYTHON_VERSION}

# Upgrade default pip packages and install base pip packages

pip install --upgrade pip
pip install ipython
