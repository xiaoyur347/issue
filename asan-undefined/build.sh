#!/bin/sh
set -x
#PASS
clang++-3.6 -shared -fPIC libtest.cpp -o libtest.so
#PASS
clang++-3.6 -shared -fPIC libtest.cpp -o libtest.so -fsanitize=address
#PASS
clang++-3.6 -shared -fPIC libtest.cpp -o libtest.so -Wl,--no-undefined
#FAIL
clang++-3.6 -shared -fPIC libtest.cpp -o libtest.so -fsanitize=address -Wl,--no-undefined

#PASS
g++-4.9 -shared -fPIC libtest.cpp -o libtest.so
#PASS
g++-4.9 -shared -fPIC libtest.cpp -o libtest.so -fsanitize=address
#PASS
g++-4.9 -shared -fPIC libtest.cpp -o libtest.so -Wl,--no-undefined
#FAIL
g++-4.9 -shared -fPIC libtest.cpp -o libtest.so -fsanitize=address -Wl,--no-undefined
