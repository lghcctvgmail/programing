#!/bin/sh

HISIV200_ROOT=`pwd|xargs dirname`
echo $HISIV200_ROOT

#export hisiv200 compile env 
export PATH=$PATH:$HISIV200_ROOT/opt/hisi-linux/x86-arm/arm-hisiv200-linux/target/bin

echo $PATH

