#!/bin/bash

# generate GUI.desktop
echo "[Desktop Entry]
Encoding=UTF-8 
Name=Anesthesia Monitor
Exec=$(pwd)/GUIMonitor.sh
Icon=$(pwd)/monitor.ico
Terminal=true
StartupNotify=true
Type=Application">GUI.desktop

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
