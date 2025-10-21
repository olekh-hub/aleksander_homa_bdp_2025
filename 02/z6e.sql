-- 6e
select
	st_distance(buildings.geometry, poi.geometry) as dist
from buildings
cross join poi
where buildings.name = 'BuildingC' and poi.name = 'K'
order by dist
