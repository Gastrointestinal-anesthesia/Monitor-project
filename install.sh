#!/bin/bash

# build workspace
cd /Qt-interface/SmartMessage
catkin_make
cd ..
cd ..
cd /DataReceiver
catkin_make
cd ..

# change mode
chmod 777 /DataReceiver/dataReceiver.sh
chmod 777 /DataReceiver/src/monitor/scripts/main.py
chmod 777 /Qt-interface/GUI.sh
chmod 777 /Qt-interface/SmartMessage/src/smart_topic/src/anesthesia_subscriber.sh

# generate GUI.desktop
echo "[Desktop Entry]
# Encoding=UTF-8 
Name=Anesthesia Monitor
Comment=Monitor
Exec=$(pwd)/GUIMonitor.sh
Icon=$(pwd)/monitor.ico
Terminal=true
StartupNotify=true
Type=Application">GUI.desktop

sudo mv /GUI.desktop /usr/share/applications
chmod 777 /usr/share/applications/GUI.desktop

