#!/bin/bash

# run roscore
source /opt/ros/noetic/setup.bash

gnome-terminal -t "roscore" -x bash -c "roscore"

sleep 1s

# run rosbag according to para
if [ $1 == "r" ] ; then
	cd bagfiles
	gnome-terminal -t "rosbag" -x bash -c "rosbag record /anesthesia_info0"
	echo "rosbag Enabled"
else
	echo "rosbag Disabled"
fi

# run other nodes
cd Monitor-project/DataReceiver
bash dataReceiver.sh

cd ..

cd Qt-interface
bash GUI.sh

# now dont have this
# cd build-SmartAn-Desktop_Qt_5_14_2_GCC_64bit-Debug
# ./SmartAn

