#!/bin/bash

# Prvi zadatak
mkdir LAB1
cd LAB1
mkdir source
touch source/empty
sudo cp -R /etc/* /var/* source/
sudo du -k -d 0 source/
ln -s source target
cd target
pwd
cd -P target
pwd
sudo du -d 0 -h -D target
touch -r source/empty source/novi
sudo rm -rf *
rmdir LAB1

# Drugi zadatak
sed -i '/[0-9]/!d' Top10
sed -ri 's/(.*) ([0-9]+.*)/\2 \1/' Top10
sed -ri 's/(.*)/\L\1/' Top10
sed -ri 's/([aeiou])/\U\1/g' Top10
sort -n Top10 -o Top10

# Treci zadatak
sudo find /var/log -name '*.log' -o -name '*.dat'
calendar -f /usr/share/calendar/calendar.lotr -A 365 | egrep -i -A 1 -B 1 "gandalf"
calendar -f /usr/share/calendar/calendar.lotr -A 365 | egrep -i "gandalf$" >> /tmp/tmp_ispis
