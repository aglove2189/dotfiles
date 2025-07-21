if [ -d "$HOME/.local/bin" ] && [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# uv
if [ -f "$HOME/.local/env" ]; then
    . "$HOME/.local/env"
fi

# starship
if command -v starship >/dev/null 2>&1; then
    eval "$(starship init bash)"
fi

# direnv
if command -v direnv >/dev/null 2>&1; then
    eval "$(direnv hook bash)"
fi
