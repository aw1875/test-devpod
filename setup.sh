#!/usr/bin/env bash

export XDG_CONFIG_HOME="$HOME/.config"
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_CONFIG_HOME/nixpkgs"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$SCRIPT_DIR" && git submodule update --init

ln -sf "$SCRIPT_DIR/config.nix" "$XDG_CONFIG_HOME/nixpkgs"

nix-env -iA nixpkgs.devcontainer

stow -d "$SCRIPT_DIR" -t "$HOME"
