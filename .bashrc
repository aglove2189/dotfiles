# just
command -v just || curl --proto '=https' --tlsv1.2 -sSfk https://just.systems/install.sh | bash -s -- -f --to $HOME/.local/bin

# uv
command -v uv || curl -LsSf https://astral.sh/uv/install.sh | sh
. "$HOME/.local/env"

# starship
command -v starship || curl -sS https://starship.rs/install.sh | sh -s -- --bin-dir $HOME/.local/bin -y
eval "$(starship init bash)"

# autoenv
test -f ~/.autoenv/activate.sh || curl -#fLo- 'https://raw.githubusercontent.com/hyperupcall/autoenv/master/scripts/install.sh' | sh
export AUTOENV_ASSUME_YES='yes'

alias wl='$HOME/log-work.sh'
