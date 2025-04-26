#!/bin/bash

echo "Setting up your dotfiles..."

# Install required software (if not already installed)

# Install Zsh if it's not installed
if ! command -v zsh &> /dev/null; then
  echo "Installing Zsh..."
  brew install zsh
  chsh -s $(which zsh)
fi

# Install Kitty if it's not installed
if ! command -v kitty &> /dev/null; then
  echo "Installing Kitty terminal..."
  brew install kitty
fi

# Install Starship if it's not installed
if ! command -v starship &> /dev/null; then
  echo "Installing Starship prompt..."
  brew install starship
fi

# Install Neovim if it's not installed
if ! command -v nvim &> /dev/null; then
  echo "Installing Neovim..."
  brew install neovim
fi

# Install Node.js if it's not installed (for coc.nvim)
if ! command -v node &> /dev/null; then
  echo "Installing Node.js..."
  brew install node
fi

# Install vim-plug for Neovim
if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]; then
  echo "Installing vim-plug for Neovim..."
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Copy the config files
echo "Copying config files..."

# Zsh config
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# Kitty config
mkdir -p ~/.config/kitty
ln -sf ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf

# Starship config
mkdir -p ~/.config
ln -sf ~/dotfiles/starship/starship.toml ~/.config/starship.toml

# Neovim config
mkdir -p ~/.config/nvim
ln -sf ~/dotfiles/nvim ~/.config

# Reload shell and apply changes
source ~/.zshrc

echo "Done! Your environment is set up!"

