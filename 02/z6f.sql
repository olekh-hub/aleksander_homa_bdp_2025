select 
	st_area(st_difference(build_c.geometry, st_buffer(build_b.geometry, 0.5))) as area
from buildings build_c
cross join buildings build_b
where build_c.name = 'BuildingC' and build_b.name = 'BuildingB'