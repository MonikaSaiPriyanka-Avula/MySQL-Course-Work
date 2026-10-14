create database flipkart;
use flipkart;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT,
    CreatedAt DATE,
    IsAvailable BOOLEAN
);

-- =========================================
-- 2. INSERT 20 PRODUCTS
-- =========================================y

INSERT INTO Products VALUES
(1, 'iPhone 15', 'Electronics', 80000, 10, '2024-01-10', TRUE),
(2, 'Samsung S24', 'Electronics', 75000, 15, '2024-02-15', TRUE),
(3, 'Dell Laptop', 'Electronics', 65000, 5, '2023-12-01', TRUE),
(4, 'HP Laptop', 'Electronics', 60000, 7, '2023-11-20', TRUE),
(5, 'Office Chair', 'Furniture', 7000, 20, '2024-03-05', TRUE),
(6, 'Study Table', 'Furniture', 12000, 8, '2024-03-12', TRUE),
(7, 'Water Bottle', 'Accessories', 500, 50, '2024-01-01', TRUE),
(8, 'Backpack', 'Accessories', 1500, 30, '2024-02-01', TRUE),
(9, 'Smart Watch', 'Electronics', 15000, 12, '2024-04-01', TRUE),
(10, 'Bluetooth Speaker', 'Electronics', 3000, 25, '2024-04-10', TRUE),
(11, 'Notebook', 'Stationery', 50, 100, '2024-01-05', TRUE),
(12, 'Pen Pack', 'Stationery', 100, 200, '2024-01-08', TRUE),
(13, 'Gaming Mouse', 'Electronics', 2000, 18, '2023-10-10', TRUE),
(14, 'Keyboard', 'Electronics', 2500, 22, '2023-09-15', TRUE),
(15, 'Monitor', 'Electronics', 18000, 6, '2023-08-20', TRUE),
(16, 'Sofa', 'Furniture', 35000, 3, '2023-07-01', TRUE),
(17, 'Dining Table', 'Furniture', 40000, 2, '2023-06-10', FALSE),
(18, 'Headphones', 'Electronics', 5000, 14, '2024-05-01', TRUE),
(19, 'Coffee Mug', 'Accessories', 300, 60, '2024-05-05', TRUE),
(20, 'Tablet', 'Electronics', 30000, 9, '2024-06-01', TRUE);


select productname from products;
select category from products;
select productname, price, stock from products;
select * from products;


select * from products where price<5000;
select * from products where category='electronics';
select * from products where stock<10; 
select price as cost from products;
select productname, stock as few_items_left from products where stock<10;
select price from products where price between 5000 and 10000;
select * from products where stock between 30 and 50;
select category from products where category like '%s';
select * from products where productname like 's%';
select * from products where productname like '%s%';
select * from products where productname like '_a%';
select * from products where category not in ('electronics','accessories');
select * from products where category in ('electronics','accessories');


select * from products order by price;
select * from products order by price desc;
select * from products order by stock;
select * from products order by stock desc;


select distinct category from products;
select distinct price from products;
select * from products order by price desc limit 5;


select max(price) as highest_product from products;
select min(price) as lowest_product from products;
select sum(price) as total_product from products;
select avg(price) as average_product from products;
select count(*) as count_of_products from products;


select category, max(price) from products group by category;
select category, min(price) from products group by category;
select category, sum(price) from products group by category;
select category, avg(price) from products group by category;
select category, count(price) from products group by category;

select category, max(price) from products group by category
having max(price)>5000;
select category, sum(price) from products group by category
having sum(price)<10000;
