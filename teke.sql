Create DATABASE teke DEFAULT charset=utf8 collate utf8_hungarian_ci;
\C latin2;
use teke;
//tabalak es adatok beillesztese

3.feladat;
Select nev From versenyzok where korcsop="A" order by nev;

4.feladat;
Select Distinct versenyzo from eredmenyek where ures >0;

5.feladat;
SELECT nev, avg(tarolas) as atlagpont from eredmenyek 
Inner Join versenyzok On eredmenyek.versenyzo=versenyzok.rajtszam 
Group By rajtszam Order By atlagpont DESC;

6.feladat;
Select egyesuletek.nev From egyesuletek Inner Join versenyzok On versenyzok.egyid=egyesuletek.id
Group by egyesuletek.id Order by count(*) desc Limit 1;