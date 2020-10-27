USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(75) DEFAULT 'Untitled',
    album VARCHAR(60) NOT NULL,
    release_date YEAR(4),
    sales FLOAT UNSIGNED,
    genre VARCHAR (50),
    PRIMARY KEY (id)
);

DESCRIBE albums;


