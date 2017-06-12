#!/bin/bash

set -e

PWD=$(pwd)

/bin/bash "$PWD/fonts/install.sh"
cp $PWD/vim ~/.vim
cp $PWD/.vimrc ~/.vimrc
