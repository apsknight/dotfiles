# Dotfiles

This repository contains my personal dotfiles for various tools and applications.

## Contents

- `.zshrc` - ZSH shell configuration
- `.bashrc` - Bash shell configuration
- `.gitconfig` - Git configuration
- `karabiner/karabiner.json` - Karabiner Elements keyboard customization
- `nvim/` - Neovim configuration
- `iterm2/` - iTerm2 terminal configuration

## Installation

To set up these dotfiles on a new machine:

```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

## Creating Symbolic Links

The install script will create all necessary symbolic links and copy configuration files, but you can also do it manually:

```bash
# Symbolic links for shell and git configs
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# Karabiner Elements
mkdir -p ~/.config/karabiner
ln -sf ~/dotfiles/karabiner/karabiner.json ~/.config/karabiner/karabiner.json

# Neovim
mkdir -p ~/.config
ln -sf ~/dotfiles/nvim ~/.config/nvim

# iTerm2 (requires copying, not symlinking)
cp ~/dotfiles/iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
```

## Updating iTerm2 Preferences

If you make changes to your iTerm2 settings, you'll need to manually export them to update this repository:

```bash
plutil -convert xml1 -o ~/dotfiles/iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
```
