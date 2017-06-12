#!/bin/bash

set -e

PWD=$(pwd)

/bin/bash "$PWD/fonts/install.sh"
rm -rf ~/.vim
cp -r $PWD/vim ~/.vim
cp $PWD/.vimrc ~/.vimrc
