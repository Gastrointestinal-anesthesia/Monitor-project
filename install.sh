#!/bin/bash

sudo apt install python3-pip
pip3 install -r requirements.txt

# build workspace, remove CmakeLists.txt due to the risk of wrong version info of ROS
cd Qt-interface/SmartMessage/src
rm CMakeLists.txt
catkin_init_workspace
cd ..
catkin_make
cd ../../DataReceiver/src
rm CMakeLists.txt
catkin_init_workspace
cd ..
catkin_make
cd ..

# change mode
chmod +x DataReceiver/dataReceiver.sh
chmod +x DataReceiver/src/monitor/scripts/main.py
chmod +x Qt-interface/GUI.sh

# generate GUI.desktop
echo "[Desktop Entry]
# Encoding=UTF-8 
Name=Anes-Bot
Comment=Anesthesia Monitor
Exec=$(pwd)/GUIMonitor.sh
Icon=$(pwd)/logo.png
Terminal=true
StartupNotify=true
Type=Application">Anesthesia.desktop

sudo mv Anesthesia.desktop /usr/share/applications

sed -i "4c cd $(pwd)" GUIMonitor.sh

