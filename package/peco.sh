#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh

wget https://github.com/peco/peco/releases/download/v0.5.3/peco_linux_amd64.tar.gz
tar xf peco_linux_amd64.tar.gz
mv peco_linux_amd64/peco /usr/local/bin/peco
rm -r peco_linux_amd64*
