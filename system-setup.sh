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

# Install GPG
brew install gpg

# Create a folder for development/code
mkdir -p ${HOME}/code
cd ${HOME}/code

# Clone the dotfiles repos
git clone git@github.com:anishjayavant/dotfiles.git

# Copy the .gitconfig file from dotfiles into home
# Look into the use of stow for symlinking gitconfig and zshrc

# Install brew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Vagrant and QEMU using brew
brew install vagrant
brew install qemu

# Check out the vagrants repo
git clone git@github.com:anishjayavant/vagrants.git

# Check out the provisioners repo
git clone git@github.com:anishjayavant/vagrant-provisioners.git

# Install vscode
brew install --cask visual-studio-code

# Spin up dev environment as needed from vagrant-provisioners using the start_dev_env.sh script
