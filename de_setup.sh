#!/bin/bash

for DFILE_SRCPATH in $(find HOME -type f)
do
    DFILE_DSTPATH=$(echo $DFILE_SRCPATH | sed "s|HOME|$HOME|")
    mkdir -p $(dirname $DFILE_DSTPATH)
    ln -s $(pwd)/$DFILE_SRCPATH $DFILE_DSTPATH
done
