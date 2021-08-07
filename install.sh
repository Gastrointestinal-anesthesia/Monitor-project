#!/bin/bash

sudo apt install python3-pip
pip3 install -r requirements.txt

# build workspace
cd Qt-interface/SmartMessage
catkin_make
cd ../../DataReceiver
catkin_make
cd ..

# change mode
chmod +x DataReceiver/dataReceiver.sh
chmod +x DataReceiver/src/monitor/scripts/main.py
chmod +x Qt-interface/GUI.sh

# generate GUI.desktop
echo "[Desktop Entry]
# Encoding=UTF-8 
Name=Anesthesia Monitor
Comment=Monitor
Exec=$(pwd)/GUIMonitor.sh
Icon=$(pwd)/monitor.ico
Terminal=true
StartupNotify=true
Type=Application">Anesthesia.desktop

sudo mv Anesthesia.desktop /usr/share/applications

