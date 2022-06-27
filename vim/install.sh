#!/bin/bash

set -xe

config_path=$HOME/.vim/init

if [ ! -d $config_path ]; then
    mkdir -p $config_path
fi

src_path=`pwd`
config_files="main.vim plug.vim functions.vim colors.vim plugins.vim general.vim keymaps.vim"

for file in $config_files; do
    ln -fs $src_path/$file $config_path/$file
done

