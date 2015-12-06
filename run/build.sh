#!/bin/sh

MYBIN=$PWD/bin
mkdir -p $MYBIN

# Build aircrack
pushd ../aircrack-ng-1.2-rc3/
make clean
make
cp scripts/airmon-ng $MYBIN/
cp src/airodump-ng $MYBIN/
popd

# Build reaver
pushd ../reaver-1.4/src
./configure
make clean
./configure
make
cp reaver $MYBIN/
popd

