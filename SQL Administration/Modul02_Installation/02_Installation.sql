/*
SQL Server Management Studio (SSMS).. download for free.. 18.9.1
neue Features. Sicherhitsbewertung, Azure Studio

Installation:

SQL 2016 : "best practice"


Instanzfeatures (merhfache Installation)

2 Serverdienste auf denselben Rechner
hochisoliert: eig Prozesse, eig DB, eig Dateien

Gr�nde f�r Instanzen: Security (sa), Software kommt nicht mit jeder Version klar

Freigegebene Features: muss man nur einmal pro Rechner installieren
Zugriffskomponenten

Standardinstanz: Port: 1433 Aufruf per Rechnername: KAIRO
benannt. Instanz: Port: ??? Aufruf per Rechnername\Instanzname KAIRO\HR



Sicherheit:
Windows Auth od/und Windows und SQL Auth (gemischte Auth)

Warum brauche ich gemischte Auth?
-evtl doofe Software
-evtl keine Windows Auth m�glich

Welche Auth ist sicherer?
-reine Windows Auth

automatisch Konto: sa ..komplexes Kennwort (14 Zeichen )

seit SQL 2008 R2 sind Windows Admins eine SQL Admins mehr
man muss also ein NT Konto angeben (Person oder Gruppe)



Pfade
Installationsdateien.. eig Zerzeichnis.. c:\Program Files..ok

DB haben Dateien:

..Datendatei:  .mdf (master Data File)
..T-Log:       .ldf (log data File)


I U D --> .ldf.. erst sp�ter in die .mdf
S   --> aus mdf lesen


Ziel: wi wollen das Schreiben nicht st�ren...

Tip: Trenne Log von Daten pyhsikalisch!!

Goldene Regel: Versuche io zu minimieren!!

--Kann man das Trennen nachholen: ja...aber dann ist die DB f�r eine gew. Zeit offline


Tempdb
#tab
eig Datentr�ger f�r tempdb (mdf und ldf)



Dienste:

SQL Server: DB Modul
SQL Agent:  Jobs(Zeitpl�ne)
SQL Browser: hilft bei Instanzen, teilt den Clients den Port mit
			braucht auch einen eig Port: 1434 UDP


			CL---> Browser(1434)
			      ---->SQL Dienst (49712)

Konten: NT Service\SQLAgent$FE  von Windows verwalt. Dienstkonto
	--eig Kennwprt�nderungen
	--lokales Konto --kein Netzwerkzugriff
	--stattdessen das Computerkonto
	--oder Userkonten


Volumewartungstask: dass SQL Server seinen dateien autom vergr��ern darf
ohne ausnullen zu m�ssen


Filestream: Hochladen von Dateien in Windows Freigaben
	--> Filetables

MAXDOP: Max Anzahl der CPUS pro ABfragen

Arbeitsspeicher: empf Maxwert f�r DAten im RAM.. 
	ber�cksichtigt das OS















*/