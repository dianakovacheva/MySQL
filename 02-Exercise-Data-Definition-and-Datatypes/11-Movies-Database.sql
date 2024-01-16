CREATE DATABASE movies;

USE movies;

CREATE TABLE directors (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    director_name VARCHAR(60) NOT NULL,
    notes TEXT
);

CREATE TABLE genres (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    genre_name VARCHAR(60) NOT NULL,
    notes TEXT
);

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    category_name VARCHAR(60) NOT NULL,
    notes TEXT
);

CREATE TABLE movies (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    title VARCHAR(255) NOT NULL,
    director_id INT,
    copyright_year YEAR,
    `length` TIME,
    genre_id INT,
    category_id INT,
    rating DECIMAL(2 , 1 ),
    notes TEXT
);

INSERT INTO directors(director_name, notes)
VALUES
("Hristo", "text"),
("Denis", "test"),
("Natasha", "test"),
("Sergey", "test");

INSERT INTO genres(genre_name, notes)
VALUES
("Test 1", "some text"),
("Test 2", "some text"),
("Test 3", "some text"),
("Test 4", "some text"),
("Test 5", "some text");

INSERT INTO categories(category_name, notes)
VALUES
("Category 1", "test text"),
("Category 2", "test text"),
("Category 3", "test text"),
("Category 4", "test text"),
("Category 5", "test text");

INSERT INTO movies(title, director_id, copyright_year, `length`, genre_id, category_id, rating, notes)
VALUES
("Movie title 1", 1, "2023", "00:05:00", 1, 1, 5.5, "some text"),
("Movie title 2", 2, "2024", "00:06:00", 1, 1, 5.5, "some text"),
("Movie title 3", 3, "2022", "00:07:00", 1, 1, 5.5, "some text"),
("Movie title 4", 4, "2021", "00:08:00", 1, 1, 5.5, "some text"),
("Movie title 5", 5, "2020", "00:09:00", 1, 1, 5.5, "some text");