select 
	buildings.name
from buildings
cross join roads
where (st_y(st_centroid(buildings.geometry)) > st_y(st_startpoint(roads.geometry))) and roads.name = 'RoadX'
