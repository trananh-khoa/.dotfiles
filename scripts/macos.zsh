#!/bin/zsh

################################################################################
# Script Name	: macOS Setup
# Description	: This script sets up macOS system and application preferences.
################################################################################

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

################################################################################
# Sound
################################################################################

# Disable startup sound (need to redo if NVRAM was reset)
sudo nvram StartupMute=%01

################################################################################
# Desktop and Dock
################################################################################

# Set dock item size to be small
defaults write com.apple.dock "tilesize" -int "36" && killall Dock

# Enables dock autohide
defaults write com.apple.dock "autohide" -bool "true" && killall Dock

# Disable 'recents' from showing in dock
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock

# Only show active applications on dock
defaults write com.apple.dock "static-only" -bool "true" && killall Dock

################################################################################
# Finder
################################################################################

# Display Finder quit option
defaults write com.apple.finder "QuitMenuItem" -bool "true" && killall Finder

# Show extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" && killall Finder

# Show hidden files
defaults write com.apple.finder "AppleShowAllFiles" -bool "true" && killall Finder

# Show path bar
defaults write com.apple.finder "ShowPathbar" -bool "true" && killall Finder

# Default to list view (may require restart)
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" && killall Finder

# Keep folders on top (in Finder and on Desktop)
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true" && killall Finder
defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool "true" && killall Finder

# Search current folder instead of whole Mac
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf" && killall Finder

# Empty bin items after 30 days
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true" && killall Finder

# Change default save location to disk instead of iCloud
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"

# Set Desktop as default location for new Finder windows
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# TODO: Somehow find a way to modify sidebar favorites
echo 'Reminder: remove Recents from favorites'
echo 'Reminder: add $HOME to favorites'

################################################################################
# Menu bar
################################################################################

# Show battery percentage
defaults write $HOME/Library/Preferences/ByHost/com.apple.controlcenter BatteryShowPercentage -bool true

################################################################################
# Safari
################################################################################

# Don't send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Show full URL in address bar
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Do not track
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# Update extensions automatically
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true

################################################################################
# Mac App Store
################################################################################

# Enable automatic update check
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Download newly available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install security updates
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

# Enable app auto-update
defaults write com.apple.commerce AutoUpdate -bool true
