#!/bin/bash
head -7 /usr/include/stdio.h | tail -n +5 > /tmp/test
tail -n +0 /tmp/test >> /tmp/test
cut -c 1-3 /tmp/test
sudo find / -type s
lspci | grep -iv controller > /tmp/test2
whereis -b locate
ping google.com | cut -f8 -d ' '
