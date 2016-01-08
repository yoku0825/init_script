#!/bin/bash

case "$version" in
  "5")
    echo "TODO"
    ;;
  "6"|"amazon")
    yum install -y cmake make gcc gcc-c++ ncurses-devel bison
    ;;
  "7")
    echo "TODO"
    ;;
esac

