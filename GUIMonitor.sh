#!/bin/bash

gnome-terminal -t "roscore" -x bash -c "roscore"

cd DataReceiver/
bash runDataReceiver.sh

cd ..
cd Qt-interface
bash runQT.sh

cd build-SmartAn-Desktop_Qt_5_14_2_GCC_64bit-Debug
./SmartAn
