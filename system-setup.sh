#!/bin/sh

# Install omz
# https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install fzf zsh plugin
git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin

# Install zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Generate SSH key for the box
ssh-keygen -t rsa -b 4096 -C "anish.sj@gmail.com"

# Add the key to GitHub
# https://github.com/settings/keys

# Create a folder for development/code

# Clone the vagrants and dotfiles repos
