#!/bin/bash
mkdir zadace
chmod 755 zadace # rwxr-xr-x
cd zadace
sudo groupadd razredA
sudo groupadd razredB
sudo usermod -aG razredA,razredB herman
sudo adduser matija
sudo adduser antonija
sudo usermod -aG razredA matija
sudo usermod -aG razredB antonija
touch a
echo "Grupa A:" >> a
sudo chgrp razredA a
touch b
echo "Grupa B:" >> b
sudo chgrp razredB b
chmod 740 a # rwxr-----
chmod 740 b # rwxr-----
sudo deluser matija
sudo deluser antonija
sudo delgroup razredA
sudo delgroup razredB
rm a
rm b
cd ..
rm -rf zadace
