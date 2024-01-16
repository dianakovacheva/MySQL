USE minions;

CREATE TABLE people (
    id INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    picture BLOB,
    height DOUBLE(6 , 2 ),
    weight DOUBLE(6 , 2 ),
    gender VARCHAR(1) NOT NULL,
    birthdate DATE NOT NULL,
    biography TEXT
);

INSERT INTO people(name,
    picture,
    height,
    weight,
    gender,
    birthdate,
    biography)
    VALUES 
    ("Diana Kovacheva", "test", 1.56, 43.2, "f", "1991-10-17", "test"),
    ("Hristo Kovachev", "test", 1.85, 75, "m", "1991-07-15", "test"),
    ("Test Test", "test", 1.56, 43.2, "f", "1991-10-17", "test"),
	("Test Test", "test", 1.56,  43.2, "f", "1991-10-17", "test"),
    ("Test Test", "test", 1.56, 43.2, "f", "1991-10-17", "test");