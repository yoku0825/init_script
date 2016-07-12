#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh

. $workdir/bzr.sh
. $workdir/mysql.sh

bzr branch lp:~percona-dev/perconatools/tpcc-mysql
cd tpcc-mysql/src
make
