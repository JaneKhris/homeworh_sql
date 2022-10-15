--количество исполнителей в каждом жанре;
SELECT genre.name, COUNT(*)  FROM genre_artist
JOIN artist ON artist.id = genre_artist.artist_id
JOIN genre ON genre_artist.genre_id = genre.id
GROUP BY genre.name;

--количество треков, вошедших в альбомы 2019-2020 годов;
SELECT count(DISTINCT t.name)  FROM track t 
JOIN album a ON t.album = a.id
WHERE a.year_of_issue  IN ('2019', '2020');

--средняя продолжительность треков по каждому альбому;
SELECT avg(cast((t.duration) as numeric)), a.name FROM track t 
JOIN album a ON t.album = a.id
GROUP BY a.name;

--все исполнители, которые не выпустили альбомы в 2020 году;
SELECT name FROM artist
WHERE name != 
(SELECT ar.name FROM artist_album aa  
JOIN artist ar ON ar.id = aa.artist_id
JOIN album al  ON aa.album_id= al.id
WHERE  al.year_of_issue = '2020');

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT c.name FROM track_collection tc 
JOIN collection c ON c.id = tc.collection_id 
JOIN track t ON t.id = tc.track_id 
JOIN album al ON al.id = t.album 
JOIN artist_album aa ON aa.album_id = al.id 
JOIN artist ar ON ar.id = aa.artist_id  
WHERE ar.name = 'Eminem';

--название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT album.name FROM artist
JOIN artist_album ON artist_album.artist_id  = artist.id 
JOIN album ON album.id = artist_album.album_id
WHERE artist.name = 
(SELECT ar.name FROM genre_artist ga
JOIN artist ar ON ar.id = ga.artist_id
JOIN genre g ON ga.genre_id = g.id
GROUP BY ar.name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC);

--наименование треков, которые не входят в сборники;
SELECT t.name  FROM track t
FULL JOIN track_collection tc ON tc.track_id = t.id 
WHERE tc.collection_id IS NULL;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
SELECT ar.name FROM track t
JOIN artist_album aa ON aa.album_id = t.album  
JOIN artist ar ON ar.id = aa.artist_id 
WHERE t.duration = (SELECT MIN(duration) FROM  track);

--название альбомов, содержащих наименьшее количество треков.
SELECT a.name , COUNT(*) FROM album a 
JOIN track t on t.album = a.id 
GROUP BY a.name
ORDER BY COUNT(*)
LIMIT 5;
