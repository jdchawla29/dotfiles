# Add ~/.local/bin to PATH for uv
export PATH="$HOME/.local/bin:$PATH"

# Set default editor
export EDITOR=nano

# If running bash, include .bashrc if it exists
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi