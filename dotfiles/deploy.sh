#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
force=""
while getopts f OPT ; do
  case $OPT in
    "f")
      force="-f"
      ;;
  esac
done
shift $((OPTIND - 1))

function deploy_for_user
{
  local user="$1"
  for f in $(ls $workdir/*) ; do
    [ "$(basename $f)" = "$(basename $0)" ] && continue
    if [ "$user" = "root" ] ; then
      ln -s "$force" "$f" "/root/.$(basename $f)"
    else
      ln -s "$force" "$f" "/home/$user/.$(basename $f)"
    fi
  done
}



if [ "$#" = "0" ] ; then
  deploy_for_user "$USER"
else
  for u in $* ; do
    deploy_for_user $u
  done
fi
