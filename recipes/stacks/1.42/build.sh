#!/bin/bash

export CPATH=${PREFIX}/include

# Temporary fix for 1.42 https://groups.google.com/forum/#!topic/stacks-users/fLQ_qMhygQ4
 sed -i.bak "41 c extern int encoded_gtypes[4][4];" src/populations.cc

./configure --prefix=$PREFIX --enable-sparsehash --enable-bam --includedir=${PREFIX}/include/bam --libdir=${PREFIX}/lib
make
make install
