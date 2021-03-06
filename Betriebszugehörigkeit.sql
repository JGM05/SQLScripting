select a.PRSNUM, round(count(a.PRSNUM)/12,1) as Betriebszugehoerigkeit_Jahre, count(a.PRSNUM) as Betriebszugehoerigkeit_Monate 
from (SELECT PRSNUM from PRSDATENVAR where PRSDATENVAR.PRSNUM in(10960,23132,80769) group by PRSNUM, JAHR, MONAT) a
group by a.prsnum;

select a.PRSNUM, round(count(a.PRSNUM)/12,1) as BZG_Jahre_Profibu_System, count(a.PRSNUM) as BZG_Monate_Profibu_System, b.BESCHFTG_BEGINN_DATUM 
from (SELECT PRSNUM from PRSDATENVAR group by PRSNUM, JAHR, MONAT) a 
left join PRSDATEN b on a.PRSNUM = b.PRSNUM
group by a.prsnum, b.BESCHFTG_BEGINN_DATUM;


SELECT PRSNUM from PRSDATENVAR where PRSDATENVAR.PRSNUM in (10960, 72311)group by PRSNUM, JAHR, MONAT;
SELECT PRSNUM, JAHR, MONAT from PRSDATENVAR where PRSDATENVAR.PRSNUM in (73091, 72311) group by PRSNUM, JAHR, MONAT;
select * from PRSDATEN where PRSDATEN.BESCHFTG_ENDE_DATUM is not NULL


/* ACHTUNG - dient der Ermittlung der Tage bei fehlendem Austritt und Umrechnung in Jahre */
select CAST((CAST(COALESCE(CAST(PRSARBVH.AUSTRITT_DATUM as varchar(50)),CURRENT_DATE) as TIMESTAMP) - PRSARBVH.EINTRITT_DATUM) as integer)/365 from PRSARBVH where PRSARBVH.PRSNUM = 80225;