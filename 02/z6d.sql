-- 6d
select
	name
,	st_perimeter(geometry) as obwod
from buildings
order by st_area(geometry) desc 
limit 2