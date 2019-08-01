#!/bin/bash

set -e

for dfile_srcpath in $(find HOME -type f)
do
    if [[ $(basename $dfile_srcpath | cut -f 2 -d .) == "sh" ]]
    then
        echo "giving execute permissions to $(basename $dfile_srcpath)"
        chmod +x $dfile_srcpath
    fi

    dfile_dstpath=$(echo $dfile_srcpath | sed "s|HOME|$HOME|")
    mkdir -p $(dirname $dfile_dstpath)
    ln -sb $(pwd)/$dfile_srcpath $dfile_dstpath
done
