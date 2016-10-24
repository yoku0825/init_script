#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh

case "$version" in
  "5")
    yum install -y gcc make 
    curl -L cpanmin.us | perl - App::cpanminus
    ;;
  "6")
    yum install -y perl-CPAN gcc perl-Module-Build perl-ExtUtils-Embed perl-parent
    echo -e "\n o conf build_requires_install_policy yes\n o conf prerequisites_policy follow\n o conf commit" | cpan
    perl -e "install App::cpanminus" -MCPAN
    ;;
  "7")
    yum install -y gcc perl-ExtUtils-Embed perl-ExtUtils-MakeMaker perl-Data-Dumper make
    curl -L cpanmin.us | perl - App::cpanminus
    ;;
  "amazon")
    echo "TODO:"
    ;;
  "*")
    echo "Failed $version"
    ;;
esac

yum cleanup all
