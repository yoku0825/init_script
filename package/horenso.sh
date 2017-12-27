#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh

$workdir/golang.sh
GOPATH=/usr/local go get github.com/Songmu/horenso/cmd/horenso
