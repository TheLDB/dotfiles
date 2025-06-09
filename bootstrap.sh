#!/bin/bash
# install.sh

set -e  # Exit on any error

DOTFILES_DIR="$HOME/dotfiles"

# Make sure we're in the right directory
cd "$DOTFILES_DIR"

# Create ~/.config if it doesn't exist
mkdir -p ~/.config

echo "Setting up dotfiles symlinks..."

# Config directory items
configs=("aerospace" "ghostty" "nvim" "zed")
for config in "${configs[@]}"; do
    target="$HOME/.config/$config"
    source="$DOTFILES_DIR/$config"
    
    # Remove existing file/directory/symlink
    if [[ -e "$target" || -L "$target" ]]; then
        echo "Removing existing $target"
        rm -rf "$target"
    fi
    
    # Create symlink
    echo "Linking $source -> $target"
    ln -sf "$source" "$target"
done

# Handle starship.toml separately (it's a file, not directory)
if [[ -e "$HOME/.config/starship.toml" || -L "$HOME/.config/starship.toml" ]]; then
    echo "Removing existing ~/.config/starship.toml"
    rm -f ~/.config/starship.toml
fi
echo "Linking $DOTFILES_DIR/starship.toml -> ~/.config/starship.toml"
ln -sf "$DOTFILES_DIR/starship.toml" ~/.config/starship.toml

# Handle Brewfile in home directory
if [[ -e "$HOME/Brewfile" || -L "$HOME/Brewfile" ]]; then
    echo "Removing existing ~/Brewfile"
    rm -f ~/Brewfile
fi
echo "Linking $DOTFILES_DIR/Brewfile -> ~/Brewfile"
ln -sf "$DOTFILES_DIR/Brewfile" ~/Brewfile

echo "✅ Dotfiles setup complete!"
