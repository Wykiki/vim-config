#!/bin/bash
BASEDIR=$(dirname "$0")
echo "$BASEDIR"
cd $BASEDIR
git submodule init
git submodule update
mv ~/.vimrc ~/.vimrc-old
mv ~/.vim ~/.vim-old
BASEDIR=$(pwd -P)
ln -s $BASEDIR/vimrc ~/.vimrc
ln -s $BASEDIR ~/.vim
