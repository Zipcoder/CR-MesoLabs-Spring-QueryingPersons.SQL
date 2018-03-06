SELECT *
FROM MOVIES
WHERE GENRE = 'Sci-Fi';

SELECT *
FROM MOVIES
WHERE IMDB_SCORE >= 6.5;

SELECT *
FROM MOVIES
WHERE RATING = 'G'
OR RATING = 'PG'
AND RUNTIME < 100;

SELECT AVG(RUNTIME)
FROM MOVIES
WHERE IMDB_SCORE < 7.5
GROUP BY('GENRE');

UPDATE MOVIES
SET RATING = 'R'
WHERE TITLE = 'Starship Troopers';

SELECT ID, RATING
FROM MOVIES
WHERE GENRE = 'Horror'
OR GENRE = 'Documentary';

SELECT AVG(IMDB_SCORE), MAX(IMDB_SCORE), MIN(IMDB_SCORE)
FROM MOVIES
GROUP BY RATING;

SELECT AVG(IMDB_SCORE), MAX(IMDB_SCORE), MIN(IMDB_SCORE)
FROM MOVIES
GROUP BY RATING
HAVING COUNT(*) > 1;

DELETE FROM MOVIES
WHERE RATING ='R';