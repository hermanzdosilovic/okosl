#!/bin/bash

# prvi zadatak
mkdir stvarce
ls -l


# drugi zadatak
sudo chmod u=r--,go=--- stvarce
cd stvarce # ne moze se zbog ranije postavljenih dozvola
sudo chmod 700 stvarce
# napise se kratka "Hello world" skripta u direktorij stvarce - dostupan zbog dozvola
sudo chmod 070 hello-world.sh
sudo umask 777
# napise se kratka skripta sa stihovima
ls -l # za provjeru djelovanja umask naredbe
sudo umask 022 # default maska dozvola
sudo chmod 770 stihovi.txt


# treci zadatak
sudo adduser skrtica
sudo chown skrtica stihovi.txt
sudo addgroup fora.ljudi
sudo chgrp fora-ljudi stihovi.txt
# sad kao korisnik ne mozemo do sadrzaja, jer nismo ni vlasnik niti smo clan grupe
# fora ljudi, a ostali korisnici nemaju nikakve dozvole! (posljedica chmod 770)

# 1. nacin
sudo su skrtica
ls -l

# 2. nacin
sudo gpasswd fora-ljudi # postavlja se lozinka jer inace ne radi pristup grupi (man stranice newgrp)
newgrp fora-ljudi # dodamo sebe u grupu fora-ljudi (dobro je zapamtiti pocetnu grupu u kojoj jesmo)
ls -l
newgrp <pocetna>

# slijedi ciscenje svega sto smo stvorili
sudo delgroup fora-ljudi
sudo deluser skrtica
rmdir -r stvarce
# ...
