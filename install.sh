#!/bin/bash
set -e

# symlink .bashrc
echo "Creating symlink for .bashrc..."
ln -snf "$HOME/dotfiles/.bashrc" "$HOME/.bashrc"

# uv
if ! command -v uv >/dev/null 2>&1; then
    echo "Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    if [ -f "$HOME/.local/env" ]; then
        . "$HOME/.local/env"
    fi
else
    echo "uv is already installed."
fi

# just
if ! command -v just >/dev/null 2>&1; then
    echo "Installing just..."
    uv tool install rust-just && cp $(uv tool dir)/rust-just/bin/just $HOME/.local/bin
else
    echo "just is already installed."
fi

# starship
if ! command -v starship >/dev/null 2>&1; then
    echo "Installing starship..."
    curl -sS https://starship.rs/install.sh | sh -s -- --bin-dir "$HOME/.local/bin" -y
else
    echo "starship is already installed."
fi

# direnv
if ! command -v direnv >/dev/null 2>&1; then
    echo "Installing direnv..."
    curl -sfL https://direnv.net/install.sh | bash
else
    echo "direnv is already installed."
fi
