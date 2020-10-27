USE codeup_test_db;

SELECT 'All albums in the table' AS 'Info';
SELECT * FROM albums;

UPDATE albums
SET sales = sales * 10;

UPDATE albums SET release_date = release_date - 100
WHERE release_date < 1980;

UPDATE albums SET name = 'Peter Jackson'
WHERE name =  'Michael Jackson';



SELECT 'All albums in the table' AS 'Info';
SELECT * FROM albums;

SELECT 'All albums released before 1980' AS 'Info';
SELECT album FROM albums WHERE release_date < 1980;

SELECT 'All albums released bt Micheal Jackson' AS 'Info';
SELECT album FROM albums WHERE name = 'Michael Jackson';
