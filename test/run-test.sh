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
whoami

gdb test.out

PID=$!
# Wait for 2 seconds
sleep 5
# Kill it
kill $PID

ls -l

#g++ -o testcpp testcpp.cpp

#./testcpp

#cat /__w/_temp/1aca428c-4080-4752-a802-77aaea02e82d.sh

echo "md5sum value ---"
#./test.out
./test.out > output.txt

sleep 10
#ls -l
#echo "going to exec SerialRead.py"
#python SerialRead.py

