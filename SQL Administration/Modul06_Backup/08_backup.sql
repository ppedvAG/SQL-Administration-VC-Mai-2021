/*

Wiederherstellungsmodel
..regelt was das T sichern soll

Einfach
..wird I U D bulk rudiment�r protokolliert, und dann sp�ter autom. gel�scht
..also alle commited TX...
--> Das T kann nicht mehr gesichert werden
--Wann? Wenn das V reicht..TestDBs.. oder schnell

Massenprotokolliert
..wie Einfach,, aber es wird nichts gel�scht
--> NUR DAS SICHERN DES T K�RZT DAS T
--> WIR M�SSEN DAS T SICHERN

Vollst�ndig
..wie Massenprotkolliert, aber sehr genau Weiss welche DS wo gelandet sind
--> w�chst st�rker
--> wir k�nnen auf Sekunden restore

Wann? bei ProduktivDbs zb


Wie muss ich sichern?

Wie lange darf die DB oder Server ausfallen?

Wie gro� darf der Datenverlust in Zeit sein?
.. regelt das T


Sicherungsvarianten

Vollst�ndige Sicherung
sichert die Dateien inklusiv Pfadangabe und Gr��e

aber es sichert nicht die Luft mit, sondern nur die Daten
aus 100MB Datene (mit 2MB Daten) werden evtl 1,5MB Sicherung
aber beim Restore werden es wieder 100MB

es wird ein Checkpoint ausgef�hrt
ver�nderte Daten aus dem RAM in Datei wegschreiben


Transakt...Sicherung
macht Checkpoint
es merkt sich die Transaktionen bzw Anweisungen
bei Restore werden alle Anweisungen wieder ausgef�hrt




Differentiell..
merkt sich die ge�nderten "Seiten" seit der letzten V Sicherung
auch Checkpoint


Was ist also der schnellste restore?
V --> m�glichst h�ufig das V

Wie lange dauert der Restore des 3ten T?
ca solange wie die TX bei ersten mal brauchten
--> nicht viele Ts 


! V
	T
	T
	T
	T
	 
	T
	T
	T
	T
!	 D
!	T
!	T
!	T
!	T





*/