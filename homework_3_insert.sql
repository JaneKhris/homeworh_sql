-- Жанры 
INSERT INTO genre(name) 
VALUES('pop');

INSERT INTO genre(name) 
VALUES('rap');

INSERT INTO genre(name) 
VALUES('Rock');

INSERT INTO genre(name) 
VALUES('dance');

INSERT INTO genre(name) 
VALUES('folk');

-- Исполнители
INSERT INTO artist(name) 
VALUES('Adele');

INSERT INTO artist(name) 
VALUES('Eminem');

INSERT INTO artist(name) 
VALUES('Nelly Furtado');

INSERT INTO artist(name) 
VALUES('The Killers');

INSERT INTO artist(name) 
VALUES('Bon Jovi');

INSERT INTO artist(name) 
VALUES('Kanye West');

INSERT INTO artist(name) 
VALUES('Timbaland');

INSERT INTO artist(name) 
VALUES('The Pussycat Dolls');

-- соответствие жанр-исполнитель
INSERT INTO genre_artist (genre_id, artist_id) 
VALUES(1, 1);

INSERT INTO genre_artist (genre_id, artist_id) 
VALUES(2, 2);

INSERT INTO genre_artist (genre_id, artist_id) 
VALUES(1, 3);

INSERT INTO genre_artist (genre_id, artist_id) 
VALUES(3, 4);

INSERT INTO genre_artist (genre_id, artist_id) 
VALUES(3, 5);

INSERT INTO genre_artist (genre_id, artist_id) 
VALUES(2, 6);

INSERT INTO genre_artist (genre_id, artist_id) 
VALUES(1, 7);

INSERT INTO genre_artist (genre_id, artist_id) 
VALUES(1, 8);

--Альбомы
INSERT INTO album(name, year_of_issue) 
VALUES('25','2014');

INSERT INTO album(name, year_of_issue) 
VALUES('The Marshall Mathers LP','2001');

INSERT INTO album(name, year_of_issue) 
VALUES('Curtain Call: The Hits','2005');

INSERT INTO album(name, year_of_issue) 
VALUES('The Ride','2017');

INSERT INTO album(name, year_of_issue) 
VALUES('Hot Fuss','2004');

INSERT INTO album(name, year_of_issue) 
VALUES('What You Want','2019');

INSERT INTO album(name, year_of_issue) 
VALUES('ye','2018');

INSERT INTO album(name, year_of_issue) 
VALUES('Doll Domination','2008');

INSERT INTO album(name, year_of_issue) 
VALUES('Loose','2007');
