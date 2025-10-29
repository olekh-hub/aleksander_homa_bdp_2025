-- 3.
-- Zamień obiekt4 na poligon. Jaki warunek musi być spełniony, aby można było wykonać to zadanie? Zapewnij te warunki.

--Warunek:
-- Aby z linii utworzyć poligon, geometria musi być zamknięta (czyli jej początek i koniec muszą się pokrywać).

UPDATE obiekty
SET geom = ST_AddPoint(geom, ST_StartPoint(geom))
WHERE nazwa = 'obiekt4'
AND NOT ST_IsClosed(geom);


UPDATE obiekty
SET geom = ST_MakePolygon(geom)
WHERE nazwa = 'obiekt4';

SELECT nazwa, ST_GeometryType(geom), ST_IsClosed(geom)
FROM obiekty
WHERE nazwa = 'obiekt4';