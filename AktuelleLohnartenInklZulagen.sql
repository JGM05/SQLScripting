Select LHNART.KRZBEZ, LHNART.BEZ, LHNART.GUELTIGBIS, 'Ja' as EBV from LHNART 
where (LHNART.GUELTIGBIS is NULL or LHNART.GUELTIGBIS > '31.12.2015')
union
select LHNARTZUL.KRZBEZ, LHNARTZUL.BEZ, LHNARTZUL.GUELTIGBIS, 'Ja' as EBV  from LHNARTZUL
where (LHNARTZUL.GUELTIGBIS is NULL or LHNARTZUL.GUELTIGBIS > '31.12.2015')