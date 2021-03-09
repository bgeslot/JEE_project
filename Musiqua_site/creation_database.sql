DROP SCHEMA IF EXISTS info_team01_schema;

CREATE SCHEMA info_team01_schema;

USE info_team01_schema;

CREATE TABLE persona (
    id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    birth_year INT NOT NULL,
    birth_month INT NOT NULL,
    birth_day INT NOT NULL,
    gender VARCHAR(6) NOT NULL,
    country VARCHAR(255) NOT NULL,
	city VARCHAR(255) NOT NULL,
    street VARCHAR(255) NOT NULL,
    street_number VARCHAR(255) NOT NULL,
    CAP INT NOT NULL,
    email VARCHAR(255) NOT NULL,
    psw VARCHAR(255) NOT NULL,
	facebook_id VARCHAR(17),
	apple_id VARCHAR(17),
	gmail_id VARCHAR(17)
);

CREATE TABLE user_profile (
    id INT PRIMARY KEY,
    type ENUM ('customer','admin','admin_music') NOT NULL,
    persona INT NOT NULL,
    FOREIGN KEY (persona) REFERENCES persona (id)
);

CREATE TABLE song (
    id INT PRIMARY KEY,
    title INT NOT NULL,
    year INT,
    duration INT
);

CREATE TABLE top_song (
    id INT PRIMARY KEY,
    month INT NOT NULL
);

CREATE TABLE is_a (
	id_top_song INT,
    id_song INT,
    PRIMARY KEY (id_top_song, id_song),
    FOREIGN KEY (id_top_song) REFERENCES top_song (id),
	FOREIGN KEY (id_song) REFERENCES song (id)
);

CREATE TABLE genre (
    id INT PRIMARY KEY,
    descr ENUM ('pop','house','jazz','metal', 'classical') NOT NULL,
    id_song INT,
    FOREIGN KEY (id_song) REFERENCES song (id)
);

CREATE TABLE listen_to (
	id_persona INT,
    id_genre INT,
    PRIMARY KEY (id_persona, id_genre),
    FOREIGN KEY (id_persona) REFERENCES persona (id),
	FOREIGN KEY (id_genre) REFERENCES genre (id)
);

CREATE TABLE playlist (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

CREATE TABLE manage (
	id_persona INT,
    id_playlist INT,
    PRIMARY KEY (id_persona, id_playlist),
    FOREIGN KEY (id_persona) REFERENCES persona (id),
	FOREIGN KEY (id_playlist) REFERENCES playlist (id)
);

CREATE TABLE contain (
	id_song INT,
    id_playlist INT,
    PRIMARY KEY (id_song, id_playlist),
    FOREIGN KEY (id_song) REFERENCES song (id),
	FOREIGN KEY (id_playlist) REFERENCES playlist (id)
);

CREATE TABLE album (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
	id_song INT,
    duration INT NOT NULL,
    year INT,
    cover blob,
    FOREIGN KEY (id_song) REFERENCES song (id)
);

CREATE TABLE artist (
    id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
	id_song INT,
    id_album INT,
    FOREIGN KEY (id_song) REFERENCES song (id),
	FOREIGN KEY (id_album) REFERENCES album (id)
);