CREATE TABLE Artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(255)
);

CREATE TABLE Songs (
	song_id INT AUTO_INCREMENT PRIMARY KEY,
    song_title VARCHAR(255) NOT NULL,
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

CREATE TABLE Rankings (
	song_id INT,
    artist_id INT,
    weeks_on_list INT,
    highest_rank INT,
    FOREIGN KEY (song_id) REFERENCES Songs(song_id),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);
