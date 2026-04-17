create database ShopManager;
use ShopManager;
drop table if exists Categories;
create table categories (
categoryry_id int auto_increment primary key,
categoryry_name varchar(100) not null
);

create table products(
produduct_id int auto_increment ,
 produduct_name varchar(100) not null, 
 price decimal(18,2),
 stock int default 0,
 categoryry_id  int auto_increment,
 foreign key(categoryry_id) references categories(categoryry_id)
);

INSERT INTO Categories (category_id, category_name) VALUES
(1, 'Điện tử'),
(2, 'Thời trang');

INSERT INTO products (product_name, price, stock, category_id) VALUES
('iPhone 15', 25000000, 10, 1),
('Samsung S23', 20000000,5, 1 ),
('Áo sơ mi nam', 5000000, 50, 2),
 ('Giày thể thao', 12000000, 20, 2);

UPDATE  products
SET price = '26000000'
WHERE product_name ='iPhone 15';

UPDATE  products
SET stock = stock + 10
WHERE  categoryry_id = 1;

delete from product
where product_id = 4;

delete from product
where price < 1000000;

select * from products;
select * from products 
where stock > 15;
select * from products 
where stock > 1000000 & stock < 25000000 ;













