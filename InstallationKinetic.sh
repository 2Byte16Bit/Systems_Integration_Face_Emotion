#!/bin/bash

echo hallo

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
echo 1
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
echo 2
sudo apt-get update
echo 3
sudo apt-get install ros-kinetic-desktop-full
echo 4
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
echo 5
source ~/.bashrc
echo 6
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
echo 7
sudo apt install python-rosdep
echo 8
sudo rosdep init
echo 9
rosdep update
echo fertig
