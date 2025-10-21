-- 6b
select 
	st_astext(geometry) as wkt
,	st_area(geometry) as pole
,	st_perimeter(geometry) as obwod
from buildings 
where name = 'BuildingA'