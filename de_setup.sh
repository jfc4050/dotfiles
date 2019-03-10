#!/usr/bin/env bash

for dfile_srcpath in $(find HOME -type f)
do
    if [[ $(basename $dfile_srcpath | cut -f 2 -d .) == "sh" ]]
    then
        echo "giving execute permissions to $(basename $dfile_srcpath)"
        chmod +x $dfile_srcpath
    fi

    dfile_dstpath=$(echo $dfile_srcpath | sed "s|HOME|$HOME|")
    if [[ -f $dfile_dstpath  ]]
    then
        echo "$dfile_dstpath exists. skipping"
    else
        echo "linking $dfile_dstpath"
        mkdir -p $(dirname $dfile_dstpath)
        ln -s $(pwd)/$dfile_srcpath $dfile_dstpath
    fi
done
