select COUNT(DISTINCT prsnum) from ABRDATEN_AZR where ABRDATEN_AZR.JAHR = 2016 and ABRDATEN_AZR.MONAT = 8;


select a.prsnum, a.INFOTEXT as Mai, b.INFOTEXT as Juni, c.INFOTEXT as Juli, d.INFOTEXT as August, e.INFOTEXT as September  
from (select prsnum, ABRDATEN_AZR.INFOTEXT from ABRDATEN_AZR where ABRDATEN_AZR.JAHR = 2016 and ABRDATEN_AZR.MONAT = 5) as a 
left join (select prsnum, ABRDATEN_AZR.INFOTEXT from ABRDATEN_AZR where ABRDATEN_AZR.JAHR = 2016 and ABRDATEN_AZR.MONAT = 6) as b on a.prsnum = b.prsnum
left join (select prsnum, ABRDATEN_AZR.INFOTEXT from ABRDATEN_AZR where ABRDATEN_AZR.JAHR = 2016 and ABRDATEN_AZR.MONAT = 7) as c on a.prsnum = c.prsnum
left join (select prsnum, ABRDATEN_AZR.INFOTEXT from ABRDATEN_AZR where ABRDATEN_AZR.JAHR = 2016 and ABRDATEN_AZR.MONAT = 8) as d on a.prsnum = d.prsnum
left join (select prsnum, ABRDATEN_AZR.INFOTEXT from ABRDATEN_AZR where ABRDATEN_AZR.JAHR = 2016 and ABRDATEN_AZR.MONAT = 9) as e on a.prsnum = e.prsnum
