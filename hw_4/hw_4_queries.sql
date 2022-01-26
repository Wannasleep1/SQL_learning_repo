-- ������� 1
SELECT "name", release_year 
FROM albums a 
WHERE release_year = 2018;

-- ������� 2
SELECT "name", duration_sec
FROM tracks t 
ORDER BY duration_sec DESC
LIMIT 1;


-- ������� 3
SELECT "name"
FROM tracks t 
WHERE duration_sec >= 3.5*60;


-- ������� 4
SELECT "name"
FROM collections c 
WHERE release_year BETWEEN 2018 AND 2020;


-- ������� 5
SELECT *
FROM musicians m 
WHERE "name" NOT LIKE '% %';


-- ������� 6
SELECT "name"
FROM tracks t 
WHERE ("name" ILIKE 'my %') OR
      ("name" ILIKE '% my') OR 
      ("name" ILIKE '% my %') OR
      ("name" ILIKE 'my');