#!/bin/bash

# Script to install iTerm2 preferences

# Define the dotfiles directory
DOTFILES_DIR="$HOME/dotfiles"

# Check if iTerm2 is running
if pgrep "iTerm" > /dev/null; then
    echo "Please close iTerm2 before installing preferences"
    exit 1
fi

# Copy the preferences file
echo "Installing iTerm2 preferences..."
cp "$DOTFILES_DIR/iterm2/com.googlecode.iterm2.plist" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"

echo "iTerm2 preferences have been installed."
echo "Please restart iTerm2 for changes to take effect."
