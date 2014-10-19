#! /bin/bash

#Prvi zadatak
sort /etc/passwd > /tmp/Zadatak1
cat /tmp/Zadatak1 | grep false > /tmp/Zadatak2
cat /tmp/Zadatak1 /tmp/Zadatak2 > /tmp/Zadatak3
sort /tmp/Zadatak3 | uniq -u > /home/Zadatak4
find /home -name Zadatak4
locate Zadatak4
cat Zadatak4 1>&2

#Drugi zadatak
cd
touch Napuni
tail -n 500 /usr/share/dict/words > Napuni
grep -e '^zoo' Napuni
wc -w Napuni
wc -c Napuni
mv Napuni Isprazni
sort -r Isprazni > Napuni2
cat Napuni2 | cut -c 1-3 | uniq -u
rm Napuni2 Isprazni

#Treci zadatak
find / > znamOvo 2> neZnamOvo
head -n 20 znamOvo >> neZnamOvo
tail -n 20 znamOvo >> neZnamOvo
