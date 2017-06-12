#!/bin/bash

set -e

PWD=$(pwd)

/bin/bash "$PWD/fonts/install.sh"
cp -rf $PWD/vim ~/.vim
cp -f $PWD/.vimrc ~/.vimrc
