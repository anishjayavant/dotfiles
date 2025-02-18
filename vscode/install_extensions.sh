#!/bin/zsh

# Run this script from VSCode integrated terminal ONLY

if [ -f "$HOME/vscode/extensions.txt" ]; then
    echo "Installing VSCode extensions..."
    # Locate the code binary
    CODE_BIN=$(find /home/vagrant/.vscode-server/bin -name "code" -type f)

    if [ -z "$CODE_BIN" ]; then
        echo "VSCode Server binary not found!"
        exit 1
    fi

    # Install extensions using the code binary
    while IFS= read -r extension; do
        echo "Installing VSCode extension $extension..."
        sudo -u vagrant $CODE_BIN --install-extension "$extension" --force
    done <"$HOME/vscode/extensions.txt"
else
    echo "No extensions list found in the dotfiles repository."
fi
