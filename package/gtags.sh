#!/bin/bash

#. $(cd $(dirname $0) ; pwd)/pip.sh
#pip install pygments

dnf install -y tar wget make gcc ncurses-devel python3-pygments
mkdir build
cd build

wget https://ftp.gnu.org/pub/gnu/global/global-6.6.14.tar.gz
tar xzf global-6.6.14.tar.gz
cd global-6.6.14
./configure --prefix=/usr
make
make install
mkdir -p ~/.vim/plugin/
cp /usr/share/gtags/gtags.vim ~/.vim/plugin/gtags.vim
cd $OLDPWD

rm -r build
