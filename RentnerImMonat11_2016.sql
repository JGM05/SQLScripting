select count(distinct(PRSDATENVAR.PRSNUM)) from PRSDATENVAR 
where PRSDATENVAR.SV_PRSGRP = "901"
and PRSDATENVAR.Jahr = 2016
and PRSDATENVAR.Monat = 11 
having count(distinct(PRSDATENVAR.PRSNUM)) >= 1;

 select distinct(PRSDATENVAR.PRSNUM) from PRSDATENVAR 
 where PRSDATENVAR.SV_PRSGRP = "901" and PRSDATENVAR.Jahr = 2016
 and PRSDATENVAR.Monat = 11 
