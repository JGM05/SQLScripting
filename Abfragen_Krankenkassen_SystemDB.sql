/* Orgeinheiten */
select * from SV_ORGEINHEIT;

/* alle aktiven KK - in OrgEinheit hinterlegt */
Select a.BETRIEBSNUM, a.KRZBEZ as Aktiv, a.GUELTIGAB, a.GUELTIGBIS, a.FOLGEBETRIEBSNUM
from SV_ORGEINHEIT a
where a.GUELTIGBIS IS NULL
and a.FOLGEBETRIEBSNUM = '';

/* alle inaktiven KK */
Select a.BETRIEBSNUM, a.KRZBEZ as Inaktiv, a.GUELTIGAB, a.GUELTIGBIS, a.FOLGEBETRIEBSNUM
from SV_ORGEINHEIT a
where a.GUELTIGBIS IS NOT NULL;

/* Beitragssätze - SV_BEITRGSTZ */

/* Anzahl KK im Einsatz - distinct */
select count(DISTINCT a.BETRIEBSNUM) from SV_BEITRGSTZ a;

Select count(tempTable.Betriebsnum) 
from (Select a.BETRIEBSNUM, MAX(a.GUELTIGAB) as test from SV_BEITRGSTZ a GROUP by a.BETRIEBSNUM) tempTable;

/* Selektiere die aktuell gültigen Sätze der KK mit dem größten GUELTIGAB */
Select * from SV_BEITRGSTZ a,(Select b.BETRIEBSNUM, MAX(b.GUELTIGAB) as test from SV_BEITRGSTZ b GROUP by b.BETRIEBSNUM) tempTable
where a.BETRIEBSNUM = tempTable.BETRIEBSNUM
and a.GUELTIGAB = tempTable.test;