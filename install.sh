#!/bin/bash
set -e

# Update system packages
sudo apt update

# Install essential packages
sudo apt install -y \
    curl \
    wget \
    git \
    build-essential \
    jq \
    unzip

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install Node.js
nvm install 22

# Install Claude Code
npm install -g @anthropic-ai/claude-code

# Clone dotfiles repo
git clone https://github.com/jdchawla29/dotfiles "$HOME/dotfiles"

# Create symlinks
ln -sf "$HOME/dotfiles/.bashrc" "$HOME/.bashrc"
ln -sf "$HOME/dotfiles/.profile" "$HOME/.profile"
ln -sf "$HOME/dotfiles/.gitconfig" "$HOME/.gitconfig"
ln -sf "$HOME/dotfiles/.gitignore_global" "$HOME/.gitignore_global"

# Claude directory
mkdir -p "$HOME/.claude"
ln -sf "$HOME/dotfiles/.claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
