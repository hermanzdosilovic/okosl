# prvi zadatak
who
who am i
whoami
finger
finger <username>

# drugi zadatak
su
id # pokrece se kao root
exit
id # pokrece se kao korisnik

# treci zadatak
sudo adduser ferovac
su ferovac
passwd # moguce je i: sudo passwd ferovac
mkdir FER # nije moguce napraviti ako smo i dalje u home-u pocetnog user-a
exit
mkdir FER # stvaramo ga u home-u pocetnog user-a
sudo usermod -d FER ferovac
su ferovac # kako bismo bili sigurni da je prosla promjena, pokrenemo cd
deluser --remove-home ferovac # nece proci jer trazi administratorske ovlasti
sudo !! # !! se zamjenjuje naredbom pokrenutom netom prije ove