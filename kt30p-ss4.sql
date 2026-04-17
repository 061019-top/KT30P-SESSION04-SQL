CREATE DATABASE ShopManager;
USE ShopManager;

DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL, 
    price DECIMAL(18,2),
    stock INT DEFAULT 0,
    category_id INT,
    FOREIGN KEY(category_id) REFERENCES categories(category_id)
);

INSERT INTO categories (category_id, category_name) VALUES
(1, 'Điện tử'),
(2, 'Thời trang');

INSERT INTO products (product_name, price, stock, category_id) VALUES
('iPhone 15', 25000000, 10, 1),
('Samsung S23', 20000000, 5, 1),
('Áo sơ mi nam', 5000000, 50, 2),
('Giày thể thao', 12000000, 20, 2);

UPDATE products
SET price = 26000000 
WHERE product_name = 'iPhone 15';

UPDATE products
SET stock = stock + 10
WHERE category_id = 1;

DELETE FROM products
WHERE product_id = 4;

DELETE FROM products
WHERE price < 1000000;

SELECT * FROM products;

SELECT * FROM products 
WHERE stock > 15;