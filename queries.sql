SELECT r.*, s.song_title, a.artist_name
FROM rankings r
JOIN songs s ON r.song_id = s.song_id
JOIN artists a ON r.artist_id = a.artist_id
WHERE r.highest_rank BETWEEN 1 AND 100
ORDER BY r.highest_rank ASC;

SELECT r.*, s.song_title, a.artist_name
FROM rankings r
JOIN songs s ON r.song_id = s.song_id
JOIN artists a ON r.artist_id = a.artist_id
WHERE r.highest_rank BETWEEN 1 AND 20
ORDER BY r.highest_rank ASC;

SELECT s.artist_id, a.artist_name, COUNT(*) AS singles_count
FROM Songs s
JOIN artists a ON s.artist_id = a.artist_id
GROUP BY s.artist_id, a.artist_name
ORDER BY singles_count DESC
LIMIT 1;

SELECT r.*, s.song_title, a.artist_name
FROM rankings r
JOIN songs s ON r.song_id = s.song_id
JOIN artists a ON r.artist_id = a.artist_id
ORDER BY weeks_on_list DESC
LIMIT 1;

SELECT * FROM artists;
SELECT * FROM rankings;
SELECT * FROM songs;