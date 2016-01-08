#!/bin/bash

case "$version" in
  "5")
    echo "TODO"
    ;;
  "6"|"amazon")
    yum install -y epel-release
    yum install -y innotop
    ;;
  "7")
    echo "TODO"
    ;;
esac

