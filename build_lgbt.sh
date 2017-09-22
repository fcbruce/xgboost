#!/bin/bash
#
# Author : fcbruce <fcbruce8964@gmail.com>
#
# Time : Fri 22 Sep 2017 22:53:09
#
#

git submodule init
git submodule update
cp make/config.mk .
make clean_all
make -j4
mv lib/libxgboost.dylib lib/liblxgboost.dylib
mv lib/libxgboost.so lib/liblxgboost.so
cd python-package
sudo $1 setup.py install
