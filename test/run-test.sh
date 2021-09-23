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
#make
g++ -fpermissive -fprofile-arcs -ftest-coverage -O0 -DUNIT_TEST -DEPOXY_DUINO -I~/Arduino/libraries/EpoxyDuino/cores/epoxy -I~/Arduino/libraries/AUnit/src *.cpp -x c++ *.ino ~/Arduino/libraries/EpoxyDuino/cores/epoxy/*.cpp ~/Arduino/libraries/AUnit/src/aunit/*.cpp -o"test.out"

echo "Make is done"
whoami

#./test.out 

#./test.out > output.txt

#sleep 10
#ls -l
#echo "going to exec SerialRead.py"
#python SerialRead.py

