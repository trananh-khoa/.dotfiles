#!/bin/zsh

####################################################################################################
# This script symlinks configurations                                                              #
####################################################################################################

# List out files to be symlinked

FILES=('.antigenrc' '.p10k.zsh' '.zsh_aliases' '.zshrc')

# Symlink and overwrite

for file in ${FILES}; do
    ln -sf ${HOME}/.dotfiles/configurations/${file} ${HOME}/${file}
done
