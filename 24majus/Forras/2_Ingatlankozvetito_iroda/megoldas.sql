--1. feladat
--Beolvasas kesz

--2.feladat
Select DISTINCT(kozterulet) From ingatlan ORDER BY kozterulet ASC;

--3. feladat
Select ingatlan.hazszam, hirdetes.ar
From ingatlan,hirdetes
Where ingatlan.id=hirdetes.ingatlanid 
and ingatlan.kozterulet="Agyagos utca" 
and hirdetes.allapot="meghirdetve";

--4.feladat
Select SUM(ar *0.015) as "bevétel" 
From hirdetes Where allapot="eladva"
and datum Like "%2021%";

--5.feladat
Select Max(ar)/Min(ar) as kulonbseg
From hirdetes
Where allapot="meghirdetve";

--6.feladat
Select ingatlan.kozterulet, ingatlan.hazszam,hirdetes.datum
From ingatlan,hirdetes 
Where ingatlan.id=hirdetes.ingatlanid 
GROUP BY ingatlan.id
HAVING COUNT(*)=1
Order by hirdetes.datum
Limit 1;

--7.feladat
Select ingatlan.kozterulet, ingatlan.hazszam, hirdetes.ar
From ingatlan,hirdetes, hirdetes as h2
Where ingatlan.id=hirdetes.ingatlanid 
and ingatlan.id=h2.ingatlanid
and hirdetes.allapot="eladva"
and h2.allapot="meghirdetve"
and hirdetes.ar=h2.ar;