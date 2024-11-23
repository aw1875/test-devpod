#!/usr/bin/env bash

export XDG_CONFIG_HOME="$HOME/.config"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$SCRIPT_DIR" && git submodule update --init

sudo apt install -y stow
cd "$SCRIPT_DIR" && stow . && cd -

nix-env -iA nixpkgs.devcontainer
