CREATE DATABASE tarea8_streaming_films;
CREATE TABLE users(
id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(50),
email VARCHAR(100) NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL UNIQUE
);
CREATE TABLE films(
id INT AUTO_INCREMENT PRIMARY KEY,
film_name VARCHAR(70),
review_id INT
);
CREATE TABLE reviews (
id INT AUTO_INCREMENT PRIMARY KEY,
description VARCHAR(200),
user_id INT,
film_id INT,
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (film_id) REFERENCES films(id)
);
CREATE TABLE playlists(
id INT AUTO_INCREMENT PRIMARY KEY,
playlist_name VARCHAR(50),
user_id INT,
film_id INT,
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (film_id) REFERENCES films(id)
);