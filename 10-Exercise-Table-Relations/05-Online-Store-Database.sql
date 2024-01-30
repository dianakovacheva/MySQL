CREATE DATABASE online_store_database;

USE online_store_database;

CREATE TABLE cities (
    city_id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE customers (
    customer_id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    birthday DATE,
    city_id INT(11),
    FOREIGN KEY (city_id)
        REFERENCES cities (city_id)
);

CREATE TABLE orders (
    order_id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    customer_id INT(11),
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);

CREATE TABLE item_types (
    item_type_id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE items (
    item_id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    item_type_id INT(11) NOT NULL,
    FOREIGN KEY (item_type_id)
        REFERENCES item_types (item_type_id)
);

CREATE TABLE order_items (
    order_id INT(11),
    item_id INT(11),
    PRIMARY KEY (order_id , item_id),
    FOREIGN KEY (order_id)
        REFERENCES orders (order_id),
    FOREIGN KEY (item_id)
        REFERENCES items (item_id)
);