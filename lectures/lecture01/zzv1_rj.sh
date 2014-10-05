#! /bin/bash

# prvi zadatak
cd ~/Desktop
cd /tmp
mkdir -p ~/Desktop/music/moja_zika
cd ~/Desktop/music
ls

# drugi zadatak
cd ~/Desktop
mkdir a b c
mkdir a/aa
cd a/aa
pwd
cd ..
pwd

# treci zadatak
cd ~ # ili cd
mkdir .OKOSL
mkdir .OKOSL/jedan .OKOSL/dva
# ili pomocu ekspanzije viticastih zagrada: mkdir .OKOSL/{jedan,dva}
cd /tmp
ls -la .OKOSL/jedan .OKOSL/dva

# cetvrti zadatak
man ls
ls -R /home
ls -aR /home
ls -lah --block-size=MB /sbin/wpa_supplicant
