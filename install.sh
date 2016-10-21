#!/bin/bash
BASEDIR=$(dirname "$0")
cd $BASEDIR
git submodule init
git submodule update
mv ~/.vimrc ~/.vimrc-old
mv ~/.vim ~/.vim-old
ln -s $BASEDIR/vimrc ~/.vimrc
ln -s $BASEDIR ~/.vim
