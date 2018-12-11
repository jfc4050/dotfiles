#!/bin/bash

### zsh
command -v zsh &> /dev/null || { echo "installing zsh"; sudo apt install -y zsh; }
sudo chsh $USER -s $(which zsh)

### oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]
then
    echo "installing oh-my-zsh"
    sh -c "$(wget -qO- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

### conda
if [ ! $(command -v conda) ]
then
    echo "installing conda"
    case "$OSTYPE" in
        "linux*") OS="Linux";;
        "darwin") OS="MacOSX";;
        *) OS="Linux";;
    esac
    CONTREPO=https://repo.continuum.io/archive
    SCRIPTNAME=$(wget -qO- $CONTREPO | grep -o "Anaconda[0-9]-[0-9]\.[0-9]\.[0-9]-$OS-x86_64.sh" | sort -r | head -n 1)
    wget $CONTREPO/$SCRIPTNAME
    zsh $SCRIPTNAME
fi

### place dotfiles
for Dotfile in .zshrc .vimrc .tmux.conf .condarc
do
    mv $HOME/$Dotfile $HOME/$Dotfile.backup
    ln -s $(pwd)/$Dotfile $HOME/$Dotfile
done

### zsh theme
ZSH_THEMEDIR="$HOME/.oh-my-zsh/custom/themes"
cp -rs $(pwd)/spaceship-prompt $ZSH_THEMEDIR &> /dev/null
ln -s "$ZSH_THEMEDIR/spaceship-prompt/spaceship.zsh-theme" "$ZSH_THEMEDIR/spaceship.zsh-theme"

### vim theme
VIM_THEMEDIR="$HOME/.vim/colors"
mkdir -p $VIM_THEMEDIR
ln -s $(pwd)/tomorrow-theme/vim/colors/Tomorrow-Night.vim $VIM_THEMEDIR/Tomorrow-Night.vim
