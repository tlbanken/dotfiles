#!/bin/bash

set -xe

config_path=$HOME/.config/nvim

if [ ! -d $config_path ]; then
    mkdir -p $config_path
fi

src_path=`pwd`
config_files="init.vim"

for file in $config_files; do
    ln -fs $src_path/$file $config_path/$file
done

