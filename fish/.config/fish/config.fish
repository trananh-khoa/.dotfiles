# Interactive
if status is-interactive
    # Commands to run in interactive sessions can go here
    # https://zellij.dev/documentation/integration#fish
end

# Fish greeting
function fish_greeting
end

# Default editor
set -gx EDITOR nvim

# Git abbreviations
abbr --add gcb 'git checkout -b'
abbr --add gco 'git checkout'
abbr --add glods 'git log --graph --pretty=\'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset\' --date=short'

# Fuzzy finder integration
fzf --fish | source

# Macos abbreviations
function ofd
    if test (count $argv) -eq 0
        open $PWD
    else
        open $argv
    end
end

# Starship prompt: https://starship.rs/#fish
starship init fish | source

# Zoxide configuration and abbreviations
zoxide init fish | source
abbr --add cd z
