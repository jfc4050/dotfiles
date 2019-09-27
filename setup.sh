#!/bin/bash

set -e

for dfile_srcpath in $(find HOME -type f)
do
    if [[ $(echo ${dfile_srcpath} | awk -F'.' '{print $NF}') == "sh" ]]
    then
        chmod -v +x ${dfile_srcpath}
    fi

    dfile_dstpath=$(echo ${dfile_srcpath} | sed "s|HOME|${HOME}|")
    mkdir -pv $(dirname ${dfile_dstpath})
    ln -bsv $(pwd)/${dfile_srcpath} ${dfile_dstpath}
done

ZSH_CUSTOM="${HOME}/.oh-my-zsh/custom"
ZSH_PLUGINS="${ZSH_CUSTOM}/plugins"
ZSH_THEMES="${ZSH_CUSTOM}/themes"
VIM_THEMES="${HOME}/.vim/colors"

mkdir -pv ${ZSH_PLUGINS} ${ZSH_THEMES} ${VIM_THEMES}

cp -nrsv $(pwd)/spaceship-prompt ${ZSH_THEMES}
ln -bsv ${ZSH_THEMES}/spaceship-prompt/spaceship.zsh-theme ${ZSH_THEMES}
ln -bsv $(pwd)/tomorrow-theme/vim/colors/Tomorrow-Night.vim ${VIM_THEMES}
cp -nrsv $(pwd)/zsh-autosuggestions ${ZSH_PLUGINS}
