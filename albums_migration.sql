USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(30),
    name VARCHAR(20),
    release_date DATE,
    sales INT,
    genre VARCHAR (10),
    PRIMARY KEY (id)
);

DESCRIBE albums;


