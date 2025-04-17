#!/bin/bash

# Script to create symbolic links from the dotfiles repository to the home directory

# Define the dotfiles directory
DOTFILES_DIR="$HOME/dotfiles"

# Create symbolic links
echo "Creating symbolic links..."
ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"

# Create Karabiner directory if it doesn't exist
mkdir -p "$HOME/.config/karabiner"
ln -sf "$DOTFILES_DIR/karabiner/karabiner.json" "$HOME/.config/karabiner/karabiner.json"

# Create Neovim symlink
mkdir -p "$HOME/.config"
ln -sf "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"

# Install iTerm2 preferences if iTerm2 is not running
if ! pgrep "iTerm" > /dev/null; then
    echo "Installing iTerm2 preferences..."
    cp "$DOTFILES_DIR/iterm2/com.googlecode.iterm2.plist" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
else
    echo "iTerm2 is running. Please close it and run the iTerm2 preferences installation script manually:"
    echo "  $DOTFILES_DIR/iterm2/install_iterm_prefs.sh"
fi

echo "Dotfiles have been linked to your home directory."
echo "You may need to restart your terminal or run 'source ~/.zshrc' for changes to take effect."
