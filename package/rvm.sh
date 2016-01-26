#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh
 
curl -L  https://get.rvm.io | bash -s
echo "source /etc/profile.d/rvm.sh" >> ~/.bashrc
source /etc/profile.d/rvm.sh

gpg2 --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
/usr/local/rvm/bin/rvm install 2.2
/usr/local/rvm/bin/rvm use ruby 2.2
