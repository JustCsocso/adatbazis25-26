--2.feladat
SELECT nev FROM diakok WHERE telepules="Barnamalom";

--3.feladat
SELECT datum, terem, orasorszam FROM orak WHERE targy="angol" ORDER BY orasorszam ASC;

--4.feladat
SELECT csoport, targy, datum FROM orak 
WHERE targy="matematika" and csoport LIKE "9%" 
or targy="fizika" and csoport 
LIKE "9%" ORDER by targy ASC;

--5. feladat
Select telepules From diakok;

--6. feladat
Select DISTINCT targy From orak ORDER by targy ASC;

--7.feladat
Select diakok.nev, diakok.email, diakok.telefon
From diakok
Join kapcsolo ON diakok.id=kapcsolo.diakid
Join orak ON kapcsolo.oraid=orak.id
WHERE orak.tanar="Angol Anna" and orak.datum="2028.11.10";

--8.feladat
