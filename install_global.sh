#!/bin/bash

yum install -y tar wget make gcc ncurses-devel
mkdir build
pushd build

wget http://tamacom.com/global/global-6.5.2.tar.gz
tar xzf global-6.5.2.tar.gz
pushd global-6.5.2
./configure --prefix=/usr
make
make install
mkdir -p ~/.vim/plugin/
cp /usr/share/gtags/gtags.vim ~/.vim/plugin/gtags.vim
popd

rm -r build
