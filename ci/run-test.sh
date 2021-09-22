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
ls ~/Arduino/libraries

cd -
pwd
ls -l

make

./test.out > output.txt

sleep 5

python SerialRead.py

