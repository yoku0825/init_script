#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh
. $workdir/../package/cpanm.sh
[ -x /usr/local/bin/cpanm ] && cpanm="/usr/local/bin/cpanm"
[ -x /usr/bin/cpanm ] && cpanm="/usr/bin/cpanm"
$cpanm Test::More::Color

wget https://github.com/tokubass/p5-Test-More-Color-SupportTest2/raw/master/lib/Test/More/Color.pm -O /usr/local/share/perl5/Test/More/Color.pm
