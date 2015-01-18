#!/bin/bash
sudo apt-get install git
git clone https://github.com/mtoyoda/sl.git
cd sl
cat << TEXT >> Makefile

remove:
	rm sl
TEXT
make sl
./sl
make remove
