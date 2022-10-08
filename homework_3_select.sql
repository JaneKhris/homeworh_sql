-- название и год выхода альбомов, вышедших в 2018 году
SELECT name, year_of_issue FROM album
WHERE year_of_issue = '2018';

--название и продолжительность самого длительного трека
SELECT name, duration  FROM track
WHERE duration = (select max(duration) as max FROM  track);

--название треков, продолжительность которых не менее 3,5 минуты
SELECT name FROM track
WHERE cast((duration) as numeric)  >=  3.30;

--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name FROM collection 
WHERE cast((year_of_issue) as integer) between 2018 and 2020;

--исполнители, чье имя состоит из 1 слова;
SELECT name FROM artist
where name not like '% %';

--название треков, которые содержат слово "мой"/"my"
SELECT name FROM track
where (lower(name) like '%мой%') or (lower(name) like '%my%');

