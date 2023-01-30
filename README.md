# .dotfiles

The `.dotfiles` repository holds scripts and configurations for quickly setting up a macOS environment.

### Installing

Clone the `.dotfiles` repository into the home folder

```zsh
cd $HOME
git clone https://github.com/trananh-khoa/.dotfiles.git
```

Execute the appropriate scripts in the `.dotfiles/scripts` directory. Note that some scripts may depend on the execution of another and that some configurations depend on the execution of certain scripts.

```zsh
cd $HOME

# Install Homebrew and common packages and applications (Needs to be executed first!).
# Can be executed on default terminal.
# NEEDS TO BE INSTALLED FIRST
./.dotfiles/scripts/homebrew.zsh

# Set up shell and terminal.
# Needs to be executed on iTerm2
# NEEDS TO BE INSTALLED SECOND
./.dotfiles/scripts/iterm.zsh

# The following scripts can be installed in any order
```
