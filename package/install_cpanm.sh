#!/bin/bash

if [ -e "/etc/centos-release" ] ; then
  version=$(perl -nle 'if (/\s([0-9]+)\.(:?[0-9]+)/) {print $1;}' < /etc/centos-release)

  case "$version" in
    "6")
      yum install -y perl-CPAN gcc perl-Module-Build
      echo -e "\n o conf build_requires_install_policy yes\n o conf prerequisites_policy follow\n o conf commit" | cpan
      perl -e "install App::cpanminus" -MCPAN
      ;;
    "7")
      echo "7"
      ;;
  esac

elif [ -e "/etc/redhat-release" ] ; then

  ### CentOS 5.x
  yum install -y gcc make 
  curl -L cpanmin.us | perl - App::cpanminus

else 

  ### TODO: How to install at Amazon Linux
  version="amazon"

fi
