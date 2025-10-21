select 
	name
,	st_area(geometry) as pole
from buildings
order by name