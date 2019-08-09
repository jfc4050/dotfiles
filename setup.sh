#!/bin/bash

set -e

for dfile_srcpath in $(find HOME -type f)
do
    if [[ $(echo $dfile_srcpath | awk -F'.' '{print $NF}') == "sh" ]]
    then
        echo "giving execute permissions to $(basename $dfile_srcpath)"
        chmod +x $dfile_srcpath
    fi

    dfile_dstpath=$(echo $dfile_srcpath | sed "s|HOME|$HOME|")
    mkdir -p $(dirname $dfile_dstpath)
    ln -sb $(pwd)/$dfile_srcpath $dfile_dstpath
done

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
ZSH_PLUGINS="$ZSH_CUSTOM/plugins"
ZSH_THEMES="$ZSH_CUSTOM/themes"
VIM_THEMES="$HOME/.vim/colors"

# zsh theme
mkdir -p $ZSH_THEMES/
cp -nrs $(pwd)/spaceship-prompt $ZSH_THEMES/
ln -sb $ZSH_THEMES/spaceship-prompt/spaceship.zsh-theme $ZSH_THEMES/

# vim theme
mkdir -p $VIM_THEMES/
ln -sb $(pwd)/tomorrow-theme/vim/colors/Tomorrow-Night.vim $VIM_THEMES/

# autosuggestions
cp -nrs $(pwd)/zsh-autosuggestions $ZSH_PLUGINS/
