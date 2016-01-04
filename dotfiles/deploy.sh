#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)

function deploy_for_user
{
  local user="$1"
  for f in $(ls $workdir/*) ; do
    [ "$(basename $f)" = "$(basename $0)" ] && continue
    ln -sf "$f" "~$1/.$(basename $f)"
  done
}

if [ "$#" = "0" ] ; then
  deploy_for_user "$USER"
else
  for u in $* ; do
    deploy_for_user $u
  done
fi
