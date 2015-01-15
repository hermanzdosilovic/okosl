#!/bin/bash
lynx &
jobs -p > lynx_ps
ps -p "$(cat lynx_ps)" -o user,%cpu,%mem,ppid,pri,s >> lynx_ps
kill %1
sed -i "s/\(.*\)/#\1/" lynx_ps

#18446
#USER     %CPU %MEM  PPID PRI S
#herman    0.0  0.1 18445  19 R

# cat lynx_ps >> lab02-1-0036480275.sh

# Ctrl+Z
