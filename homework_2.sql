CREATE TABLE IF NOT EXISTS genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
	);

CREATE TABLE IF NOT EXISTS artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	year_of_issue VARCHAR(4) NOT NULL
);

CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	duration NUMERIC NOT NULL,
	album INTEGER NOT NULL REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year_of_issue VARCHAR(4) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_artist (
	genre_id INTEGER REFERENCES genre(id),
	artist_id INTEGER REFERENCES artist(id),
	CONSTRAINT pk_1 PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS artist_album (
	artist_id INTEGER REFERENCES artist(id),
	album_id INTEGER REFERENCES album(id),
	CONSTRAINT pk_2 PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS track_collection (
	track_id INTEGER REFERENCES track(id),
	collection_id INTEGER REFERENCES collection(id),
	CONSTRAINT pk_3 PRIMARY KEY (track_id, collection_id)
);
