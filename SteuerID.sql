/* nur das absolute Maximum bzw. den letzte DS */ 
select mainTable.FREIGABEDATE, mainTable.PRSNUM, mainTable.STEUERIDNUM, mainTable.STATUS, mainTable.DATENART, mainTable.TRANSFERDATE  
from LST_ELSTAM_OUT mainTable join 
(select PRSNUM, max(FREIGABEDATE) maxWert from LST_ELSTAM_OUT where PRSNUM IN (8001, 8002, 8003, 8004) group by PRSNUM) helperTable
on mainTable.PRSNUM = helperTable.PRSNUM
where mainTable.FREIGABEDATE = helperTable.maxWert;

/* nur das absolute Maximum unter Berücksichtigung der Datenart "Anmeldung = 1" */ 
select mainTable.FREIGABEDATE, mainTable.PRSNUM, mainTable.STEUERIDNUM, mainTable.STATUS, mainTable.DATENART, maintable.BESCHBEGINN, mainTable.BESCHENDE, mainTable.TRANSFERDATE
from LST_ELSTAM_OUT mainTable join 
(select PRSNUM, max(FREIGABEDATE) maxWert from LST_ELSTAM_OUT where PRSNUM IN (146293,146807,180157,194168) and DATENART = 1 group by PRSNUM) helperTable
on mainTable.PRSNUM = helperTable.PRSNUM
where mainTable.FREIGABEDATE = helperTable.maxWert;

/* nur das absolute Maximum unter Berücksichtigung der Datenart "Abmeldung = 3" */ 
select mainTable.FREIGABEDATE, mainTable.PRSNUM, mainTable.STEUERIDNUM, mainTable.STATUS, mainTable.DATENART, maintable.BESCHBEGINN, mainTable.BESCHENDE, mainTable.TRANSFERDATE
from LST_ELSTAM_OUT mainTable join 
(select PRSNUM, max(FREIGABEDATE) maxWert from LST_ELSTAM_OUT where PRSNUM IN (146293,146807,180157,194168) and DATENART = 3 group by PRSNUM) helperTable
on mainTable.PRSNUM = helperTable.PRSNUM
where mainTable.FREIGABEDATE = helperTable.maxWert;

/* alle ausgehenden von einem MA */
select mT.STEUERIDNUM,
mT.PRSNUM, 
mT.STATUS, 
mT.DATENART, 
mT.BESCHBEGINN, 
mT.BESCHENDE, 
mT.HINWEISCODE, 
mT.HINWEISMESSAGE,  
mT.TRANSFERDATE, 
mT.TRANSFERTICKET, mT.HAUPTBESCH_FLAG, 
mT.FREIGABEDATE, 
mT.NAME_NACHNAME, 
mT.NAME_VORNAME  
from LST_ELSTAM_OUT mT
where mT.PRSNUM = 320026;

/* alle eingehenden von einem MA */
select mT.STEUERIDNUM, 
mt.PRSNUM, 
mt.DATENART, 
mt.EINGANGSDATUM, 
mt.HINWEISMESSAGE, 
mt.EINGANGSDATUM, 
mt.HINWEISCODE, 
mT.NAME_NACHNAME, 
mT.STATUS from LST_ELSTAM_IN mT 
where mT.PRSNUM = 3114; 



