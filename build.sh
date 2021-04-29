#!/bin/bash -x 
BINS=/home/kbui/git/toolchain/aarch64/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin
#home/kbui/workspace/git/toolchain/gcc-linaro-7.4.1-2019.02-x86_64_arm-linux-gnueabi
LIBS=/home/kbui/workspace/git/toolchain/aarch64/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/libexec/gcc/aarch64-linux-gnu/7.5.0
CC=$BINS/aarch64-linux-gnu- 

if [ $1 == 'atf' ];
then
  make CROSS_COMPILE=$CC PLAT=sun50i_h616 DEBUG=1 bl31
fi
if [ $1 == 'clean' ];
then
   	make CROSS_COMPILE=$CC PLAT=sun50i_h616 DEBUG=1 clean
fi

