#! /bin/bash

#Prvi zadatak
mkdir Paul
touch Paul/Ringo
cp Paul/Ringo ~/Desktop
stat --format=%y Paul
rm Paul/Ringo

#Drugi zadatak
touch John George
#rucni upis podataka
vim John
vim George
mkdir One
mv John George One/
head -n 3 One/George
head -n -3 One/John
rm -r One/

#Treci zadatak
mkdir Jules
mkdir Jules/{Rita,Lucy,Elenor,Desmond}
cp -r Jules/Rita Jules/Lucy/
touch Jules/Desmond/{Molly,Bill}
#Symbolic linkove uvijek kreirajte navodeci apsolutne adrese u TARGET parametru:
ln -s /home/korisnik/Jules/Lucy Jules/Elenor/link
rm -r Jules/Lucy
ls -l Jules/Elenor
stat --format=%y Jules/Elenor/

#Cetvrti zadatak
stat --format=%x /etc/passwd
mkdir Pennie
du -s Pennie
touch Pennie/{Sally,Jules}
ln -s /usr/bin Pennie/link
du -s Pennie
du -sL Pennie
rm -r Pennie
