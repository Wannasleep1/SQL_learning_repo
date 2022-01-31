-- Использовал только иннер джоин, поскольку в данной бд нет пустых данных.

-- Задание 1
SELECT g."name", count(musician_id) AS musicians_qty
FROM musician_genre mg 
JOIN genres g ON mg.genre_id = g.id 
GROUP BY g."name";


-- Задание 2
SELECT count(t."name") AS tracks_qty
FROM tracks t
JOIN albums a ON t.album_id = a.id 
WHERE a.release_year BETWEEN 2019 AND 2020;


-- Задание 3
SELECT a."name", round(avg(duration_sec)) AS average_duration_sec
FROM albums a 
JOIN tracks t ON a.id = t.album_id 
GROUP BY a."name";


-- Задание 4
SELECT m."name"
FROM musicians m 
WHERE m.id NOT IN (
    SELECT DISTINCT ma.musician_id 
    FROM musician_album ma 
    JOIN albums a ON ma.album_id = a.id 
    WHERE a.release_year = 2020
);


-- Задание 5
SELECT DISTINCT c."name"
FROM musician_album ma 
JOIN musicians m ON ma.musician_id = m.id 
JOIN albums a ON ma.album_id = a.id 
JOIN tracks t ON a.id = t.album_id 
JOIN track_collection tc ON tc.track_id = t.id 
JOIN collections c ON tc.collection_id = c.id 
WHERE m."name" = 'Imagine Dragons';


-- Задание 6
SELECT a."name"
FROM musician_album ma 
JOIN musicians m ON ma.musician_id = m.id 
JOIN albums a ON ma.album_id = a.id 
JOIN musician_genre mg ON m.id = mg.musician_id
GROUP BY mg.musician_id, a."name" 
HAVING count(mg.genre_id) > 1;
    

-- Задание 7
SELECT DISTINCT t."name" AS track_name
FROM tracks t 
LEFT JOIN track_collection tc ON tc.track_id = t.id 
WHERE tc.collection_id IS NULL 
ORDER BY t."name";


-- Задание 8
SELECT m."name"
FROM musician_album ma 
JOIN musicians m ON ma.musician_id = m.id 
JOIN albums a ON ma.album_id = a.id 
JOIN tracks t ON a.id = t.album_id
WHERE t.duration_sec = (SELECT min(t.duration_sec) FROM tracks t);


-- Задание 9
WITH tmp AS (
    SELECT t.album_id, count(t.id) AS tracks_qty
    FROM tracks t
    GROUP BY t.album_id
)
SELECT a."name"
FROM albums a
JOIN tmp ON a.id = tmp.album_id
WHERE tmp.tracks_qty = (
    SELECT min(tracks_qty)
    FROM tmp
)
ORDER BY a."name";