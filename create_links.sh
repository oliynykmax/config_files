#!/bin/bash

# This script creates symbolic links from the home directory to the config files in this repository.
# It's safe to run this script multiple times.

# Get the absolute path of the directory where this script is located.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Function to create a symbolic link
# Arguments:
#   $1: source file in the repository
#   $2: target file in the home directory
create_link() {
    local source_file="$1"
    local target_file="$2"
    local target_dir

    # Create the target directory if it doesn't exist
    target_dir=$(dirname "$target_file")
    mkdir -p "$target_dir"

    # Create the symbolic link, overwriting any existing file or link
    ln -sf "$source_file" "$target_file"
    echo "Created link: $target_file -> $source_file"
}

# --- Create links ---

create_link "$SCRIPT_DIR/bash/.bashrc"        "$HOME/.bashrc"
create_link "$SCRIPT_DIR/fish/config.fish"    "$HOME/.config/fish/config.fish"
create_link "$SCRIPT_DIR/starship/starship.toml" "$HOME/.config/starship.toml"
create_link "$SCRIPT_DIR/kitty/kitty.conf"    "$HOME/.config/kitty/kitty.conf"
create_link "$SCRIPT_DIR/zsh/.zshrc"          "$HOME/.zshrc"
create_link "$SCRIPT_DIR/fastfetch/config.jsonc" "$HOME/.config/fastfetch/config.jsonc"
create_link "$SCRIPT_DIR/nano/nanorc" "$HOME/.nanorc"
create_link "$SCRIPT_DIR/nano/syntax" "$HOME/.nano/syntax"

echo -e "
Done."
