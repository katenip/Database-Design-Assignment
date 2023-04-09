DROP DATABASE IF EXISTS spotify;
CREATE DATABASE spotify;
USE spotify;

CREATE TABLE Genre (
    name varchar(255) NOT NULL,
    PRIMARY KEY (name)
);
CREATE TABLE Artist (
    artist_id int NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    DOB date,
    PRIMARY KEY (artist_id)
);
CREATE TABLE Songs (
    link varchar(255) NOT NULL,
    genre_name varchar(255) NOT NULL,
    artist int NOT NULL,
    PRIMARY KEY (link),
    FOREIGN KEY (genre_name) REFERENCES Genre(name),
    FOREIGN KEY (artist) REFERENCES Artist(artist_id)
);
CREATE TABLE PlayList (
    playlist int NOT NULL,
    song varchar(255) NOT NULL,
    song_rank int NOT NULL,
    PRIMARY KEY (playlist),
	FOREIGN KEY (song) REFERENCES Songs(link),
    CONSTRAINT song_rank_constraint UNIQUE (song_rank)
);
CREATE TABLE User (
    email varchar(255) NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    password varchar(255),
    playlist int,
    PRIMARY KEY (email),
    FOREIGN KEY (playlist) REFERENCES PlayListartist(playlist)
);

