#!/usr/bin/env bash
cd dpdk-2.0.0/
make install T=x86_64-native-linuxapp-gcc
cd ..
cd dpdk
rm -rf *
ln -s ../dpdk-2.0.0/x86_64-native-linuxapp-gcc/lib/ lib
ln -s ../dpdk-2.0.0/x86_64-native-linuxapp-gcc/include include
cd ..
./configure --with-dpdk-lib=`echo $PWD`/dpdk
make

