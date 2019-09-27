#!/bin/bash

set -e

ZSH_CUSTOM="${HOME}/.oh-my-zsh/custom"
ZSH_PLUGINS="${ZSH_CUSTOM}/plugins"
ZSH_THEMES="${ZSH_CUSTOM}/themes"

mkdir -p ${ZSH_PLUGINS} ${ZSH_THEMES}

ln -fsv $(pwd)/HOME/.zshrc ${HOME}
ln -fsv $(pwd)/zsh-autosuggestions ${ZSH_PLUGINS}/zsh-autosuggestions
ln -fsv $(pwd)/spaceship-prompt ${ZSH_THEMES}/spaceship-prompt
ln -fsv ${ZSH_THEMES}/spaceship-prompt/spaceship.zsh-theme ${ZSH_THEMES}

for vsc_cfgfile in settings keybindings
do
    vsc_srcpath="$(pwd)/HOME/.config/Code/User/${vsc_cfgfile}.json"
    vsc_dstpath="${HOME}/Library/Application Support/Code/User/${vsc_cfgfile}.json"

    mkdir -p "$(dirname "$vsc_dstpath")"
    ln -fsv $vsc_srcpath "$vsc_dstpath"
done
