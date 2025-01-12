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
    [ "$(basename $f)" = "my.cnf" ] && continue
    [ "$(basename $f)" = "atuin.config.toml" ] && continue
    if [ "$user" = "root" -o -z "$user" ] ; then
      homedir="/root"
    else
      homedir="/home/$user"
    fi
    ln -s $force "$f" "$homedir/.$(basename $f)"
  done
  vim_for_perl
  install_atuin
}

function vim_for_perl
{
  vimdir="$homedir/.vim"
  [ -d "$vimdir" ] || mkdir "$vimdir"
  pushd "$vimdir"
  if [ ! -d vundle ] ; then
    git clone https://github.com/VundleVim/Vundle.vim.git vundle
    echo "Startup vim and exec ':BundleInstall'"
  fi
  popd
}

function install_atuin
{
  curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
  ln -s $PWD/atuin.config.toml ~/.config/atuin/config.toml
}

if [ "$#" = "0" ] ; then
  deploy_for_user "$USER"
else
  for u in $* ; do
    deploy_for_user $u
  done
fi

exit 0
