/* MD DB */

select * from ABRDATEN where prsnum = 10890;

select * from ABRDATEN_BAS where prsnum = 10890; /* ja */
delete from ABRDATEN_BAS where prsnum = 10890; /* ja */

select * from KR_BAS where prsnum = 10890; 

select * from KR_FIBU where prsnum = 10890; 

select * from KR_BETRAG where prsnum = 10890; 

select * from PRSDATEN where prsnum = 10890; /* ja */
delete from PRSDATEN where prsnum = 10890; /* ja */

select * from PRSDATENVAR where prsnum = 10890; /* ja */
delete from PRSDATENVAR where prsnum = 10890; /* ja */

select * from PRSARBVH where prsnum = 10890; /* ja */
delete from PRSARBVH where prsnum = 10890; /* ja */

select * from PRSBANKVERB where prsnum = 10890; /* ja */
delete from PRSBANKVERB where prsnum = 10890; /* ja */

select * from PRSENTGDSNBAS where prsnum = 10890;

select * from PRSKSTSTL where prsnum = 10890; /* ja */
delete from PRSKSTSTL where prsnum = 10890; /* ja */

select * from PRSLEISTLHN where prsnum = 10890;

select * from PRSLHNKONST where prsnum = 10890;

select * from PRSLHNSCHEMA where prsnum = 10890; /* ja */
delete from PRSLHNSCHEMA where prsnum = 10890; /* ja */

select * from PRSLSTBEURTL where prsnum = 10890;

select * from PRSPFNDDATEN where prsnum = 10890;

select * from PRSUNTBR where prsnum = 10890;

select * from PRSURLAUB where prsnum = 10890;

select * from PRSVORTRG where prsnum = 10890;

select * from SYSCHANGELOG where prsnum = 10890;

select * from ZHLGDATEN where prsnum = 10890;

select * from ZHLGDATENARC where prsnum = 10890;

select * from LHNKTO where prsnum = 10890;

select * from LHNKTO_ABR where prsnum = 10890; 

/* KUNDEN DB */ 

select * from ORGABTLDATEN where ORGABTLDATEN.ABTLLEITER_PRSNUM = 10890;

select * from PRSVORGESDEF where prsnum = 10890;

select * from PRTARCHIV where prsnum = 10890;

select * from SYSREMINDER where prsnum = 10890; /* ja */
delete from SYSREMINDER where prsnum = 10890; /* ja */

select * from SYSREMINDERARC where prsnum = 10890;

select * from USERPRSREF where prsnum = 10890;

select * from KSTSTL where KSTSTL.KSTSTLLEITER_PRSNUM = 10890;