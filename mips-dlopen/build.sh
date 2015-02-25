#!/bin/sh
g++ -shared -fPIC libtest.cpp -o libtest_x86.so
g++ main.cpp -o x86_test -ldl
mipsel-linux-g++ -shared -fPIC libtest.cpp -o libtest_mips.so
mipsel-linux-g++ main.cpp -o mips_test -ldl

ndk-build -C ./android/lib
ndk-build -C ./android/test
