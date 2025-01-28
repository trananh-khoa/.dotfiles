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

# Eza abbreviations
abbr --add ls 'eza --color=always --group-directories-first --icons'
abbr --add ll 'eza -la --icons --octal-permissions --group-directories-first'
abbr --add l 'eza -bGF --header --git --color=always --group-directories-first --icons'
abbr --add llm 'eza -lbGd --header --git --sort=modified --color=always --group-directories-first --icons'
abbr --add la 'eza --long --all --group --group-directories-first'
abbr --add lx 'eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --color=always --group-directories-first --icons'

abbr --add lS 'eza -1 --color=always --group-directories-first --icons'
abbr --add lt 'eza --tree --level=2 --color=always --group-directories-first --icons'
abbr --add l. "eza -a | grep -E '^\.'"

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
