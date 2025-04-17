# iTerm2 Configuration

This directory contains configuration files for iTerm2.

## Files

- `com.googlecode.iterm2.plist` - iTerm2 preferences file
- `install_iterm_prefs.sh` - Script to install iTerm2 preferences

## Installation

To install the iTerm2 preferences:

1. Close iTerm2 if it's running
2. Run the installation script:

```bash
./install_iterm_prefs.sh
```

3. Restart iTerm2

## Notes

- iTerm2 preferences are stored in a binary plist file that is automatically updated by the application
- Unlike other dotfiles, we can't use symbolic links for iTerm2 preferences as the application rewrites the file
- The installation script copies the preferences file to the correct location
- If you make changes to your iTerm2 settings, you'll need to manually export them to update this repository:

```bash
plutil -convert xml1 -o ~/dotfiles/iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
```
