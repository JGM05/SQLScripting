/* Skript */
select f.rdb$relation_name, f.rdb$field_name
from rdb$relation_fields f
join rdb$relations r on f.rdb$relation_name = r.rdb$relation_name
and r.rdb$view_blr is null 
and (r.rdb$system_flag is null or r.rdb$system_flag = 0)
where f.rdb$relation_name like 'PRSDAT%'
and f.rdb$field_name like '%FAM%'
order by 1, f.rdb$field_position;