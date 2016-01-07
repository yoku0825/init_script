#!/bin/bash

yum install -y tar wget gcc python-devel
mkdir build
pushd build
wget https://launchpad.net/bzr/2.6/2.6.0/+download/bzr-2.6.0.tar.gz
tar xf bzr-2.6.0.tar.gz
cd bzr-2.6.0
python setup.py install
popd
rm -r build
