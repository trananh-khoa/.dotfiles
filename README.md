# .dotfiles

The `.dotfiles` repository holds scripts and configurations for quickly setting up a MacOS environment.

### Installing

Clone the `.dotfiles` repository into the home folder

```zsh
cd $HOME
git clone https://github.com/trananh-khoa/.dotfiles.git
```

Execute the appropiate scripts in the `.dotfiles/scripts` directory. Note that some scripts may depend on the execution of another and that some configurations depend on the execution of certain scripts.

```zsh
cd $HOME

# Install Homebrew and common packages and applications (Needs to be executed first!)
./.dotfiles/scripts/homebrew.zsh

# Install language/application specific packages and applications
./.dotfiles/scripts/git.zsh
./.dotfiles/scripts/iterm.zsh
./.dotfiles/scripts/java.zsh
./.dotfiles/scripts/python.zsh

# Symlink configurations (Needs to be executed last!)
./.dotfiles/scripts/symlink.zsh
```
