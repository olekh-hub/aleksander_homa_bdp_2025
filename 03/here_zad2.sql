--2.
--Znajdź ile nowych POI pojawiło się w promieniu 500 m od wyremontowanych lub
--wybudowanych budynków, które znalezione zostały w zadaniu 1. Policz je wg ich kategorii.

SELECT 
    p19.type,
    COUNT(DISTINCT p19.poi_id) AS liczba_poi
FROM t2019_kar_poi_table p19
LEFT JOIN t2018_kar_poi_table p18
    ON p19.poi_id = p18.poi_id
JOIN changed_buildings cb
    ON ST_DWithin(p19.geom, cb.geom, 500)  -- sprawdza, czy POI leży w odległości ≤ 500 m od budynku
WHERE p18.poi_id IS NULL                   -- POI nie istnieje w 2018 → nowy POI
GROUP BY p19.type
ORDER BY liczba_poi DESC;