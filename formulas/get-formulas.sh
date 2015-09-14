#!/bin/sh

FORMULAS="vim-formula"
BASE=https://github.com/nbirnel

for i in $FORMULAS; do
    test -d $i || git clone $BASE/$i
    cd $i && git pull origin master
done
