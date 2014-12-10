#!/bin/bash
sudo adduser vedran
sudo passwd vedran
sudo mkdir /papir
sudo usermod -d /papir vedran
sudo usermod -l martin vedran
groupadd printer
sudo usermod -g printer martin

sudo deluser martin
sudo delgroup printer
sudo rm -rf /papir
