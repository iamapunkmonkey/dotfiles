#!/bin/bash

git clone git@github.com:iamapunkmonkey/unicornleap.git ~/git/unicornleap
cd ~/git/unicornleap
make && make install

cd ~

git clone git@github.com:iamapunkmonkey/rainicornleap.git ~/git/rainicornleap
cd ~/git/rainicornleap
make && make install
