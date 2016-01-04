#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)

for f in $(ls $workdir/*) ; do
  [ "$(basename $f)" = "$(basename $0)" ] && continue
  ln -sf "$f" "$HOME/.$(basename $f)"
done

