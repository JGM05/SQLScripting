select * from KR_BAS as a where a.PRSNUM = 50122 and a.JAHR = 2016 order by a.MONAT;

SELECT * from KR_Bas as a Left JOIN KR_BETRAG as b on a.ID = b.PARENTID where a.JAHR = 2016 and a.MONAT = 5 and a.PRSNUM = 50002;

SELECT a.PRSNUM, a.KORREKTURMONAT, a.KORREKTURNUM, a.KORREKTURSTATUS, a.MONAT from KR_Bas as a 
where a.JAHR = 2016 /* and a.MONAT = 5 */ 
and a.PRSNUM = 50122
/* and a.KORREKTURNUM > 1 */


SELECT b.PARENTID, a.PRSNUM, a.KORREKTURMONAT, a.KORREKTURNUM, a.KORREKTURSTATUS, a.MONAT, b.KSTART, b.BETRAG 
from KR_Bas as a Left JOIN KR_BETRAG as b on a.ID = b.PARENTID 
where a.JAHR = 2016 /* and a.MONAT = 5 */ 
and a.PRSNUM = 50122
order by a.KORREKTURSTATUS, b.KSTART;

