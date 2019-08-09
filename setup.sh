#!/bin/bash

set -e

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
ZSH_PLUGINS="$ZSH_CUSTOM/plugins"
ZSH_THEMES="$ZSH_CUSTOM/themes"
VIM_THEMES="$HOME/.vim/colors"

ln -sbr .zshrc .vimrc .tmux.conf .condarc $HOME/

# zsh theme
mkdir -p $ZSH_THEMES
cp -nrs $(pwd)/spaceship-prompt $ZSH_THEMES
ln -sb $ZSH_THEMES/spaceship-prompt/spaceship.zsh-theme $ZSH_THEMES/

# autosuggestions
cp -nrs $(pwd)/zsh-autosuggestions $ZSH_PLUGINS

# vim theme
mkdir -p $VIM_THEMES
ln -sb $(pwd)/tomorrow-theme/vim/colors/Tomorrow-Night.vim $VIM_THEMES/Tomorrow-Night.vim
