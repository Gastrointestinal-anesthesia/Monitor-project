#!/bin/bash

# run rosbag
# rosbag record /anesthesia_info0

# run roscore
source /opt/ros/noetic/setup.bash
gnome-terminal -t "roscore" -x bash -c "roscore"

sleep 1s

# run other nodes
cd DataReceiver/
bash dataReceiver.sh

cd ..
cd Qt-interface
bash GUI.sh

cd build-SmartAn-Desktop_Qt_5_14_2_GCC_64bit-Debug
./SmartAn

