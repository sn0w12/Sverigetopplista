LOAD DATA LOCAL INFILE 'C:/Users/lucas/Downloads/artister.txt'
INTO TABLE artists
FIELDS TERMINATED BY ',' 
ENCLOSED BY '\''
LINES STARTING BY '(' TERMINATED BY '),' 
(artist_name);

DROP TABLE IF EXISTS `TempSongs`;

CREATE TEMPORARY TABLE TempSongs (
	song_id INT AUTO_INCREMENT PRIMARY KEY,
    song_title VARCHAR(255) NOT NULL,
    weeks_on_list INT,
    highest_rank INT,
    artist_id INT
);

LOAD DATA LOCAL INFILE 'C:/Users/lucas/Downloads/latar.txt'
INTO TABLE TempSongs
FIELDS TERMINATED BY ',' 
ENCLOSED BY '\''
LINES STARTING BY '(' TERMINATED BY '),' 
(song_title, weeks_on_list, highest_rank, artist_id);

INSERT INTO Songs (song_title, artist_id)
SELECT song_title, artist_id
FROM TempSongs;

INSERT INTO Rankings (song_id, artist_id, weeks_on_list, highest_rank)
SELECT song_id, artist_id, weeks_on_list, highest_rank
FROM TempSongs;

DROP TABLE TempSongs;