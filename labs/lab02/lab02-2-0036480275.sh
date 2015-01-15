#!/bin/bash
sudo mkdir -p /sftp/{Project1,Project2,Project3}/Program
sudo chmod -R 755 /sftp

# create groups
sudo groupadd Team1
sudo groupadd Team2
sudo groupadd Team3

# create users
sudo useradd -M -l -G Team1 lucija
sudo useradd -M -l -G Team1 dominik
sudo useradd -M -l -G Team2 josip
sudo useradd -M -l -G Team2 antun
sudo useradd -M -l -G Team3 nino
sudo useradd -M -l -G Team1,Team2,Team3,sudo dino

sudo chmod -R 750 /sftp/{Project1,Project2,Project3}/Program

sudo chgrp -R Team1 /sftp/Project1/Program
sudo chgrp -R Team2 /sftp/Project2/Program
sudo chgrp -R Team3 /sftp/Project3/Program
