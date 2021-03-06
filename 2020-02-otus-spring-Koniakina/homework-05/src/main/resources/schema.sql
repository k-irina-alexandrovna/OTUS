DROP TABLE IF EXISTS AUTHORS;
DROP TABLE IF EXISTS GENRES;
DROP TABLE IF EXISTS BOOKS;

CREATE TABLE PUBLIC.AUTHORS
(
	ID          LONG PRIMARY KEY AUTO_INCREMENT,
	FULLNAME    VARCHAR(255)
);

CREATE TABLE GENRES
(
	ID      LONG PRIMARY KEY AUTO_INCREMENT,
	TITLE   VARCHAR(255)
);

CREATE TABLE BOOKS
(
	ID        LONG PRIMARY KEY AUTO_INCREMENT,
	TITLE     VARCHAR(255),
	AUTHOR_ID LONG,
	GENRE_ID  LONG
);