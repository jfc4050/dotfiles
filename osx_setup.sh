#!/bin/bash

set -e

for vsc_cfgfile in settings keybindings
do
    vsc_srcpath="$(pwd)/HOME/.config/Code/User/${vsc_cfgfile}.json"
    vsc_dstpath="${HOME}/Library/Application Support/Code/User/${vsc_cfgfile}.json"

    mkdir -p "$(dirname "$vsc_dstpath")"
    ln -fsv $vsc_srcpath "$vsc_dstpath"
done
