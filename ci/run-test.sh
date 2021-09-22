#!/bin/bash
echo "Starting the shell script"
# Exit immediately if a command exits with a non-zero status.
set -e
# Enable the globstar shell option
shopt -s globstar

ls -l
cd ../test

cd ~/Arduino/libraries

git clone https://github.com/bxparks/EpoxyDuino.git

cd -

pwd

echo "APP_NAME := tests \n\
ARDUINO_LIBS := AUnit \n\
include ~/Arduino/libraries/EpoxyDuino/EpoxyDuino.mk \n\
" > Makefile

ls -l

make

./tests.out

#cd ../../AUnit/extras
#sleep 5
#python SerialRead.py

