#!/bin/sh

# With default -O3 optimization each G++ process eats 2Gb RAM, so tone optimization down to -O2, and limit make to two jobs
make -j2 2>&1 | tee build.log 
[ -f libapplication.so ] || exit 1
exit 0
