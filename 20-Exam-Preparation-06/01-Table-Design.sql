CREATE DATABASE airlines_db;

USE airlines_db;

CREATE TABLE countries (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL UNIQUE,
    description TEXT,
    currency VARCHAR(5) NOT NULL
);

CREATE TABLE passengers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    country_id INT NOT NULL,
    FOREIGN KEY (country_id)
        REFERENCES countries (id)
);

CREATE TABLE airplanes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    model VARCHAR(50) NOT NULL UNIQUE,
    passengers_capacity INT NOT NULL,
    tank_capacity DECIMAL(19 , 2 ) NOT NULL,
    cost DECIMAL(19 , 2 ) NOT NULL
);


CREATE TABLE flights (
    id INT PRIMARY KEY AUTO_INCREMENT,
    flight_code VARCHAR(30) NOT NULL UNIQUE,
    departure_country INT NOT NULL,
    FOREIGN KEY (departure_country)
        REFERENCES countries (id),
    destination_country INT NOT NULL,
    FOREIGN KEY (destination_country)
        REFERENCES countries (id),
    airplane_id INT NOT NULL,
    FOREIGN KEY (airplane_id)
        REFERENCES airplanes (id),
    has_delay TINYINT(1),
    departure DATETIME
);

CREATE TABLE flights_passengers (
    flight_id INT,
    passenger_id INT,
    FOREIGN KEY (flight_id)
        REFERENCES flights (id),
    FOREIGN KEY (passenger_id)
        REFERENCES passengers (id)
);