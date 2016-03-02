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
    if [ "$user" = "root" || -z "$user" ] ; then
      homedir="/root"
    else
      homedir="/home/$user"
    fi
    ln -s $force "$f" "$homedir/.$(basename $f)"
  done
  vim_for_perl
}

function vim_for_perl
{
  vimdir="$homedir/.vim"
  [ -d "$vimdir" ] || mkdir "$vimdir"
  pushd "$vimdir"
  git clone git://github.com/gmarik/vundle.git vundle
  echo "Startup vim and exec ':BundleInstall'"
  popd

  dictdir="$vimdir/dict"
  [ -d "$dictdir" ] || mkdir "$dictdir"
  wget -q https://raw.github.com/Cside/dotfiles/master/.vim/dict/perl.dict -O "$dictdir/perl.dict"
}

if [ "$#" = "0" ] ; then
  deploy_for_user "$USER"
else
  for u in $* ; do
    deploy_for_user $u
  done
fi
