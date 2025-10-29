-- 7.
-- Policz jak wiele sklepów sportowych (‘Sporting Goods Store’- tabela POIs) znajduje sięw odległości 300 m od parków (LAND_USE_A).

SELECT 
    COUNT(DISTINCT p.gid) AS liczba_sklepow_sportowych
FROM t2019_kar_poi_table p
JOIN t2019_kar_land_use_a l
    ON ST_DWithin(p.geom, l.geom, 300)
WHERE p.type = 'Sporting Goods Store';