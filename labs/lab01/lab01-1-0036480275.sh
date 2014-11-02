#!/bin/bash
mkdir LAB1
cd LAB1
mkdir source
touch source/empty
sudo cp -R /etc/* /var/* source/
sudo du -k -d 0 source/
ln -s source target
cd target
pwd
cd ..
cd -P target
pwd
sudo du -d 0 -h -D target
touch -r source/empty source/novi
sudo rm -rf *
rmdir LAB1
