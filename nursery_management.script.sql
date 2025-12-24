CREATE DATABASE  nursery_db;
USE nursery_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    quantity INT DEFAULT 1
);

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    price DOUBLE,
    image VARCHAR(100)
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100),
    product_name VARCHAR(200),
    price DOUBLE,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);




SELECT * FROM plant;

SHOW VARIABLES LIKE 'port';
