#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh

case "$version" in
  "5")
    echo "TODO"
    ;;
  "6")
    yum install -y epel-release
    yum install -y docker-io
    service docker start
    ;;
  "7")
    echo "7"
    ;;
  "amazon")
    yum install -y docker
    service docker start
  "*")
    echo "Failed $version"
    ;;
esac

docker run -v /usr/local/bin:/target jpetazzo/nsenter
curl -s -L https://raw.githubusercontent.com/yoku0825/my_script/master/docker_wrap.sh -o /usr/local/bin/docker_wrap.sh
chmod +x /usr/local/bin/docker_wrap.sh
ln -s /usr/local/bin/docker_wrap.sh /usr/bin/d
