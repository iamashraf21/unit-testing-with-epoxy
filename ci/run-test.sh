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

echo "Listing library files"
cd -
make clean

echo "make clean done"
make

echo "Make is done"

ls -l

./test.out > output.txt

sleep 10
ls -l
echo "going to exec SerialRead.py"
python SerialRead.py

