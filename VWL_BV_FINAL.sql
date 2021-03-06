


/* Final */
select PRSDATEN.PRSNUM,
Prsdaten.NAME_VORNAME, 
PRSDATEN.NAME_NACHNAME, 
PRSBANKVERB.ARBVHID,
PRSBANKVERB.ZHLGTYPE  as VWL_2xx_DV_3xx_PK_4xx,
PRSBANKVERB.BANK_IBAN,
PRSBANKVERB.BANK_KONTONUM, 
COALESCE(PRSBANKVERB.BETRAG,'Berechnet') as Betrag,
PRSBANKVERB.CREDITOR_NAME as Empfaenger,
PRSBANKVERB.VERWZWECK_1, 
PRSBANKVERB.VERWZWECK_2,
a.VLBLL0X
from PRSBANKVERB 
left join PRSDATEN on PRSDATEN.PRSNUM = PRSBANKVERB.PRSNUM
left outer join (select PRSLHNSCHEMA.PRSNUM, PRSLHNSCHEMA.ARBVHID, count(PRSLHNSCHEMA.PRSNUM) VLBLL0X from PRSLHNSCHEMA where PRSLHNSCHEMA.LOHNART = 'VLBLL0X' group by PRSLHNSCHEMA.PRSNUM,PRSLHNSCHEMA.ARBVHID) a on PRSBANKVERB.ARBVHID = a.ARBVHID and PRSBANKVERB.PRSNUM = a.PRSNUM 
where PRSBANKVERB.ZHLGTYPE in (200, 210, 220, 300, 310, 320, 400, 410, 420)
and (PRSBANKVERB.GUELTIGBIS is NULL or PRSBANKVERB.GUELTIGBIS = 0 or PRSBANKVERB.GUELTIGBIS > 201612)
order by PRSDATEN.PRSNUM;
 



/* Final 2 nur aktive */
select b.InnerPRSNUM PRSNUM,
b.InnerPRSNAME Name,
b.InnerPRSVORNAME Vorname, 
PRSBANKVERB.ARBVHID,
PRSBANKVERB.ZHLGTYPE  as VWL_2xx_DV_3xx_PK_4xx,
PRSBANKVERB.BANK_IBAN,
PRSBANKVERB.BANK_KONTONUM, 
COALESCE(PRSBANKVERB.BETRAG,'Berechnet') as Betrag,
PRSBANKVERB.CREDITOR_NAME as Empfaenger,
PRSBANKVERB.VERWZWECK_1, 
PRSBANKVERB.VERWZWECK_2,
a.VLBLL0X
from PRSBANKVERB 
right join (select PRSDATEN.PRSNUM as InnerPRSNUM, PRSDATEN.NAME_NACHNAME as InnerPRSNAME, PRSDATEN.NAME_VORNAME as InnerPRSVORNAME  
	from PRSDATEN RIGHT join (select PRSDATENVAR.PRSNUM from PRSDATENVAR where PRSDATENVAR.JAHR = 2016 and PRSDATENVAR.MONAT = 12) a on PRSDATEN.PRSNUM = a.PRSNUM) b on PRSBANKVERB.PRSNUM = b.InnerPRSNUM
left outer join (select PRSLHNSCHEMA.PRSNUM, PRSLHNSCHEMA.ARBVHID, count(PRSLHNSCHEMA.PRSNUM) VLBLL0X from PRSLHNSCHEMA where PRSLHNSCHEMA.LOHNART = 'VLBLL0X' group by PRSLHNSCHEMA.PRSNUM,PRSLHNSCHEMA.ARBVHID) a on PRSBANKVERB.ARBVHID = a.ARBVHID and PRSBANKVERB.PRSNUM = a.PRSNUM 
where PRSBANKVERB.ZHLGTYPE in (200, 210, 220, 300, 310, 320, 400, 410, 420)
and (PRSBANKVERB.GUELTIGBIS is NULL or PRSBANKVERB.GUELTIGBIS = 0 or PRSBANKVERB.GUELTIGBIS > 201612)
order by b.InnerPRSNUM;


select PRSLHNSCHEMA.PRSNUM, PRSLHNSCHEMA.ARBVHID, count(PRSLHNSCHEMA.PRSNUM) VLBLL0X from PRSLHNSCHEMA where PRSLHNSCHEMA.LOHNART = 'VLBLL0X' group by PRSLHNSCHEMA.PRSNUM,PRSLHNSCHEMA.ARBVHID

