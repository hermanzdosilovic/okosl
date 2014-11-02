#!/bin/bash
sudo find /var/log -name '*.log' -o -name '*.dat'
calendar -f /usr/share/calendar/calendar.lotr -A 365 | egrep -i -A 1 -B 1 "gandalf"
calendar -f /usr/share/calendar/calendar.lotr -A 365 | egrep -i "gandalf$" >> /tmp/tmp_ispis
