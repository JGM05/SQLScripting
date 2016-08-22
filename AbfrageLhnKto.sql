select f.rdb$relation_name, f.rdb$field_name
from rdb$relation_fields f
join rdb$relations r on f.rdb$relation_name = r.rdb$relation_name
and r.rdb$view_blr is null 
and (r.rdb$system_flag is null or r.rdb$system_flag = 0)
and f.rdb$field_name like "%ARBVH%"
order by 1, f.rdb$field_position;

select * from PRSDATENVAR where PRSDATENVAR.PRSNUM = 10890;

select * from LHNKTO where LHNKTO.ARBVHID = 501066;

select * from LHNKTO_BAS where LHNKTO_BAS.ARBVHID = 501066;

select * from LHNKTO where LHNKTO.PARENTID = 501066;

select skip ((select count(*) - 10 from LHNKTO))
  LHNKTO.PARENTID,LHNKTO.PRSNUM, LHNKTO.ARBVHID, LHNKTO.VONTAG from LHNKTO
  order by LHNKTO.PARENTID asc;