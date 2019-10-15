#!/bin/bash
yum -y install wget
wget https://raw.githubusercontent.com/andyfessel/NTI-300/master/packages.txt
for packages in $(cat packages.txt); do
  yum -y install $packages
done  
  
