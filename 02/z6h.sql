with poly as (
	select ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))') as geometry
)
select 
	st_area(st_difference(buildings.geometry, poly.geometry)) + st_area(st_difference(poly.geometry, buildings.geometry))
from buildings
cross join poly
where buildings.name = 'BuildingC'
