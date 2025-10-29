
-- 5. 
-- Zaktualizuj dane w tabeli ‘input_points’ tak, aby punkty te były w układzie współrzędnych DHDN.Berlin/Cassini.

ALTER TABLE input_points
ADD COLUMN geom_3068 geometry(Point, 3068);

UPDATE input_points
SET geom_3068 = ST_Transform(geom, 3068);

SELECT 
    id,
    ST_AsText(geom) AS geom_4326,
    ST_AsText(geom_3068) AS geom_3068,
    ST_SRID(geom_3068) AS srid
FROM input_points;
