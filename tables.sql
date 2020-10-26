USE codeup_test_db;

DROP TABLE IF EXISTS quotes;
CREATE TABLE IF NOT EXISTS quotes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author_first_name VARCHAR(20),
    author_last_name VARCHAR(20) NOT NULL DEFAULT 'Unknown',
    content TEXT NOT NULL,
    PRIMARY KEY (ID)
);

DESCRIBE quotes;


DROP TABLE IF EXISTS pets;
CREATE TABLE IF NOT EXISTS pets (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(15) NOT NULL,
    species VARCHAR(15),
    breed VARCHAR(15),
    gender CHAR(1),
    birthday DATE,
    weight DECIMAL(5,2),
    is_neutered BOOLEAN,
    PRIMARY KEY(id)
);
DESCRIBE pets;