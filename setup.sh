#!/bin/bash

set -e

ZSH_THEMEDIR="$HOME/.oh-my-zsh/custom/themes"
VIM_THEMEDIR="$HOME/.vim/colors"

ln -sbr .zshrc .vimrc .tmux.conf .condarc $HOME/

# zsh theme
mkdir -p $ZSH_THEMEDIR
cp -nrs $(pwd)/spaceship-prompt $ZSH_THEMEDIR
ln -sb $ZSH_THEMEDIR/spaceship-prompt/spaceship.zsh-theme $ZSH_THEMEDIR/

# vim theme
mkdir -p $VIM_THEMEDIR
ln -sb $(pwd)/tomorrow-theme/vim/colors/Tomorrow-Night.vim $VIM_THEMEDIR/Tomorrow-Night.vim
