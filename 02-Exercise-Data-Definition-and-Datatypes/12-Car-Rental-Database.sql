CREATE DATABASE car_rental;

USE car_rental;

CREATE TABLE categories (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(255) NOT NULL,
    daily_rate DOUBLE(6 , 2 ),
    weekly_rate DOUBLE(6 , 2 ),
    monthly_rate DOUBLE(6 , 2 ),
    weekend_rate DOUBLE(6 , 2 )
);

INSERT INTO categories(category, daily_rate, weekly_rate, monthly_rate, weekend_rate)
VALUES
("Category 1", 2.2, 3.3, 4.5, 10.0),
("Category 1", 2.2, 3.3, 4.5, 10.0),
("Category 1", 2.2, 3.3, 4.5, 10.0);

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    plate_number VARCHAR(20),
    make VARCHAR(255),
    model VARCHAR(255),
    car_year YEAR,
    category_id INT,
    doors INT,
    picture BLOB,
    car_condition VARCHAR(255),
    available BOOL
);

INSERT INTO cars(plate_number, make, model, car_year, category_id, doors, picture, car_condition, available)
VALUES
("123456", "T-ROCK", "VW", "2019", 1, 5, "test", "very good", false),
("123876", "T-ROCK", "VW", "2020", 1, 5, "test", "very good", true),
("123496", "T-ROCK", "VW", "2021", 1, 5, "test", "very good", true);


CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    title VARCHAR(255) NOT NULL,
    notes TEXT
);

INSERT INTO employees(first_name, last_name, title, notes)
VALUES
("Diana", "Kovacheva", "Web Developer", "test"),
("Hristo", "Kovachev", "Software Developer", "test"),
("Georgy", "Petrov", "Manager", "test");

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    driver_licence_number VARCHAR(30) NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(255),
    zip_code INT,
    notes TEXT
);

INSERT INTO customers(driver_licence_number, full_name, address, city, zip_code, notes)
VALUES
("1234", "Diana Kovacheva", "Berliner Str", "Schroben", 85864, "test"),
("1235", "Diana Kovacheva", "Berliner Str", "Schroben", 85864, "test"),
("1236", "Diana Kovacheva", "Berliner Str", "Schroben", 85864, "test");

-- categories, cars, employees, customers, rental_orders

CREATE TABLE rental_orders(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
employee_id INT NOT NULL,
customer_id INT NOT NULL,
car_id INT NOT NULL,
car_condition VARCHAR(255),
tank_level INT,
kilometrage_start INT,
kilometrage_end INT,
total_kilometrage INT,
start_date DATE,
end_date DATE,
total_days INT,
rate_applied DOUBLE(6,2),
tax_rate DOUBLE(6,2),
order_status BOOL,
notes TEXT
);

INSERT INTO rental_orders(employee_id, customer_id, car_id, car_condition, tank_level, kilometrage_start, kilometrage_end, total_kilometrage, start_date, end_date, total_days, rate_applied, tax_rate, order_status, notes)
VALUES
(1, 2, 3, "Very good", 30, 100, 150, 250, "2024-01-13", "2024-01-14", 1, 2.5, 4.0, true, "some text here"),
(2, 3, 4, "Very bad", 100, 100, 150, 250, "2024-01-13", "2024-01-14", 1, 2.5, 4.0, true, "some text here"),
(3, 4, 5, "Good", 30, 60, 150, 250, "2024-01-13", "2024-01-14", 1, 2.5, 4.0, true, "some text here");