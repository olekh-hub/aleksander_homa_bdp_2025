-- 8.
--Znajdź punkty przecięcia torów kolejowych (RAILWAYS) z ciekami (WATER_LINES). Zapisz
--znalezioną geometrię do osobnej tabeli o nazwie ‘T2019KARBRIDGES’.

CREATE TABLE t2019_kar_bridges AS
SELECT 
    ST_Intersection(r.geom, w.geom) AS geom
FROM t2019_kar_railways r
JOIN t2019_kar_water_lines w
    ON ST_Intersects(r.geom, w.geom);


SELECT COUNT(*) AS liczba_mostow FROM t2019_kar_bridges;