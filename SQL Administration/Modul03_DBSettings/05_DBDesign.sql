/*
DB Design:

Prim�rschl�ssel --Beziehung--> Fremdschl�ssel

Normalform 1, 2. 3. BC 4. 5.
versus Redundanz (ist schnell)

Datentypen


�berblick...

PK: um Beziehungen zu machen... --> ref Integrit�t-- man keinen L�schen wenn er FK Datens�tze besitzt



Datentypen:

Ziel: weniger IO

'Otto'
char(50)......... 50 .. 'Otto                          '
varchar(50)......  4 .. 'Otto'
nvarchar(50)..... 2*4.. 'Otto' (8)
nchar(50)........ 2*50.. 'Otto (100)


Das was auf der HDD liegt kommt 1:1 in RAM

--je weniger IO desto weniger RAM

nimm nur dann n.. her , wenn du es wirklich brauchst.!


--Datum
datetime (ms)
datetime2 (ns)
Date (datum)
Time
Datetimeoffset (ms inkl Zeitzone)
smalldatetime (Sek)

--verwende nur dann datetime , wenn du auch die Zeit brauchst


--verwende char bei fixen L�ngen und varchar bei variaben L�ngen









*/