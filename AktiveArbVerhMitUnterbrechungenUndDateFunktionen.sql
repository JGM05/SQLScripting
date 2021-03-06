
/* Krankheit begann im aktuellen Monat */
select * from LHNKTO_UNTBR join (select PRSARBVH.ID from PRSARBVH where PRSARBVH.STATUS < 2) as ActArbvh on
ActArbvh.ID = LHNKTO_UNTBR.ARBVHID  
where (LHNKTO_UNTBR.VONDATUM is not null and LHNKTO_UNTBR.VONDATUM > (SELECT cast((CURRENT_TIMESTAMP - EXTRACT(DAY from current_timestamp) +  1) as Date) from rdb$database))  
and (LHNKTO_UNTBR.BISDATUM is NULL or LHNKTO_UNTBR.BISDATUM > (SELECT cast((CURRENT_TIMESTAMP - EXTRACT(DAY from current_timestamp) +  1) as Date) from rdb$database))

/* Unterbrechung besteht bzw. bestand im aktuellen Monat */
select * from LHNKTO_UNTBR join (select PRSARBVH.ID from PRSARBVH where PRSARBVH.STATUS < 2) as ActArbvh on
ActArbvh.ID = LHNKTO_UNTBR.ARBVHID  
where (LHNKTO_UNTBR.VONDATUM is not null)  
and (LHNKTO_UNTBR.BISDATUM is NULL or LHNKTO_UNTBR.BISDATUM > (SELECT cast((CURRENT_TIMESTAMP - EXTRACT(DAY from current_timestamp) +  1) as Date) from rdb$database))



select * from LHNKTO_UNTBR where (LHNKTO_UNTBR.VONDATUM < CURRENT_TIMESTAMP);

SELECT cast((CURRENT_TIMESTAMP - EXTRACT(DAY from current_timestamp) +  1) as Date) from rdb$database)

select PRSARBVH.ID, PRSARBVH.PRSNUM, PRSARBVH.STATUS from PRSARBVH;

select date 'Now' from rdb$database;

SELECT DATEADD (EXTRACT(DAY FROM cast(current_timestamp as date))+1 DAY TO cast(current_timestamp as date))

SELECT cast((CURRENT_TIMESTAMP - EXTRACT(DAY from current_timestamp) +  1) as Date) from rdb$database;