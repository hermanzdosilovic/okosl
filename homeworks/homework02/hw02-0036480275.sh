#!/bin/bash
ln -s /etc/passwd korisnici
file korisnici
wc -l korisnici
head -n -5 korisnici
head -n -5 korisnici | tail +0
sudo touch -m korisnici
stat korisnici
df /
df --block-size=M /
du -sc ~ | tail -1
