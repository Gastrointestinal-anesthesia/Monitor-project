#!/bin/bash

sudo apt install pip
pip3 install hl7parser
pip3 install sockets
pip3 install rospy


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

sudo cp $(pwd)/GUI.desktop /usr/share/applications
rm $(pwd)/GUI.desktop
cd 
chmod 777 /usr/share/applications/GUI.desktop
chown lab129 /usr/share/applications/GUI.desktop

