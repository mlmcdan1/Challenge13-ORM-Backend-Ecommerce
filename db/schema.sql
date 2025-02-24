-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- USE DATABASE
USE ecommerce_db;

-- CREATE CATEGORY TABLE
CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- CREATE PRODUCT TABLE
CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL DEFAULT 10,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE SET NULL
);

-- CREATE TAG TABLE
CREATE TABLE tag (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    tag_name VARCHAR(255)
);

-- CREATE PRODUCT_TAG TABLE
CREATE TABLE product_tag (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    product_id INT,
    tag_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE,
    FOREIGN KEY (tag_id) REFERENCES tag(id) ON DELETE CASCADE
);