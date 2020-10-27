USE codeup_test_db;

SELECT 'All Albums from Pink Floyd' AS 'Info';
SELECT album FROM * WHERE name = 'Pink Floyd';

SELECT 'Release date of Sgt. Pepper''s Lonely Hearts Club Band' AS 'Info';
Select release_date FROM albums WHERE album = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'Genre of album Nevermind' AS 'Info';
SELECT genre FROM albums WHERE album = 'Nevermind';

SELECT 'All albums released from 1990-1999' AS 'Info';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'All Albums with less than 20 million sales' AS 'Info';
SELECT album FROM albums WHERE sales <= 20;


SELECT ALBUM FROM albums WHERE genre = 'Rock';