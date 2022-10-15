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

INSERT INTO genre(name) 
VALUES('hard rock');

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

INSERT INTO album(name, year_of_issue) 
VALUES('Music To Be Murdered By','2020');

INSERT INTO collection (name, year_of_issue) 
VALUES('Summertime Ballads','2018');

INSERT INTO collection (name, year_of_issue) 
VALUES('Hits Of The Decade 2000-2009','2010');

INSERT INTO collection (name, year_of_issue) 
VALUES('Rock Workout','2022');

INSERT INTO collection (name, year_of_issue) 
VALUES('Rock Anthems - Volume 10','2018');

INSERT INTO collection (name, year_of_issue) 
VALUES('8 Mile','2002');

INSERT INTO collection (name, year_of_issue) 
VALUES('2008-2012 Bangers','2019');

INSERT INTO collection (name, year_of_issue) 
VALUES('Nostalgia','2020');

INSERT INTO collection (name, year_of_issue) 
VALUES('She Playing Hella Hard','2021');

INSERT INTO track (name, duration, album) 
VALUES('Hello', 4.55, 1);

INSERT INTO track (name, duration, album) 
VALUES('I miss you', 5.48, 1);

INSERT INTO track (name, duration, album) 
VALUES('The Real Slim Shady', 4.44, 2);

INSERT INTO track (name, duration, album) 
VALUES('Flatline', 3.21, 4);

INSERT INTO track (name, duration, album) 
VALUES('Somebody Told Me', 3.20, 5);

INSERT INTO track (name, duration, album) 
VALUES('Who Said It Would Last Forever', 4.01, 6);

INSERT INTO track (name, duration, album) 
VALUES('Lose Yourself', 5.20, 3);

INSERT INTO track (name, duration, album) 
VALUES('All Mine', 2.25, 7);

INSERT INTO track (name, duration, album) 
VALUES('I Hate This Part', 4.38, 8);

INSERT INTO track (name, duration, album) 
VALUES('Space', 3.07, 8);

INSERT INTO track (name, duration, album) 
VALUES('When I Grow Up', 4.05, 8);

INSERT INTO track (name, duration, album) 
VALUES('Mr. Brightside', 3.42, 5);

INSERT INTO track (name, duration, album) 
VALUES('Send My Love', 3.43, 1);

INSERT INTO track (name, duration, album) 
VALUES('Let My Hair Down', 3.38, 9);

INSERT INTO track (name, duration, album) 
VALUES('Do It', 3.41, 9);

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

INSERT INTO genre_artist (genre_id, artist_id) 
VALUES(6, 5);

INSERT INTO artist_album (artist_id, album_id) 
VALUES(1, 1);

INSERT INTO artist_album (artist_id, album_id) 
VALUES(2, 2);

INSERT INTO artist_album (artist_id, album_id) 
VALUES(2, 3);

INSERT INTO artist_album (artist_id, album_id) 
VALUES(3, 4);

INSERT INTO artist_album (artist_id, album_id) 
VALUES(4, 5);

INSERT INTO artist_album (artist_id, album_id) 
VALUES(5, 6);

INSERT INTO artist_album (artist_id, album_id) 
VALUES(6, 7);

INSERT INTO artist_album (artist_id, album_id) 
VALUES(8, 8);

INSERT INTO artist_album (artist_id, album_id) 
VALUES(3, 9);

INSERT INTO artist_album (artist_id, album_id) 
VALUES(2, 10);

INSERT INTO track_collection (track_id, collection_id) 
VALUES(1, 1);

INSERT INTO track_collection (track_id, collection_id) 
VALUES(3, 2);

INSERT INTO track_collection (track_id, collection_id) 
VALUES(5, 3);

INSERT INTO track_collection (track_id, collection_id) 
VALUES(6, 4);

INSERT INTO track_collection (track_id, collection_id) 
VALUES(7, 5);

INSERT INTO track_collection (track_id, collection_id) 
VALUES(9, 6);

INSERT INTO track_collection (track_id, collection_id) 
VALUES(12, 8);
