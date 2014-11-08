#Prvi zadatak
echo $-			#Ispisuje argumente s kojima je pozvana ljuska
man bash


#Drugi zadatak
ps -feu root,<korisnik>			# Umjesto <korisnik> staviti korisnicko ime
								# Korisnicko ime se moze saznati naredbom whoami
ps -feC bash
nano &
echo $$							# man bash -> Special parameters
ps -fe --pid <PID_ljuske> --ppid <PID_ljuske>		
								# Upisati PID ljuske iz prethodnog zadatka


#Treci zadatak
nano datoteka.txt &			# Ljuska ispisuje PID procesa
fg
#Upisivanje teksta bez spremanja podataka
kill <PID>					# Naredba se moze izvesti iz druge ljuske
							# Umjesto <PID> upisati PID procesa nano
							# Ako se ne navede argument kill salje SIGTERM
# nano ispisuje informacije o spremljenoj backup datoteci, te prekida program
nano datoteka.txt &
fg
#Upisivanje teksta bez spremanja podataka
kill -9 <PID>				# 9 je brojcana oznaka za SIGKILL. Druga mogucnost:
							# kill -SIGKILL <PID>
# nano se odmah prekida


