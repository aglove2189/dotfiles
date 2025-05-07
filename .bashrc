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

# autoenv
export AUTOENV_ASSUME_YES='yes'
if [ -f "$HOME/.autoenv/activate.sh" ]; then
    . "$HOME/.autoenv/activate.sh"
fi
