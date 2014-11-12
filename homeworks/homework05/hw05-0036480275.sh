#!/bin/bash

# Zadatak 1
dd if=/dev/urandom of=/dev/null &
pid=($!)
echo $pid
kill -SIGUSR1 $pid
# [1]  + 37626 user-defined signal 1  dd if=/dev/urandom of=/dev/null
# proces vise nije aktivan

# Zadatak 2
nano &
kill -SIGKILL %1
# Ne, zato jer dvije razlicite ljuske mogu imati vise istih JID-ova

# Zadatak 3
ps -e --forest
# /bin/login
