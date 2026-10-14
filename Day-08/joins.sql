CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- USERS TABLE

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,     -- Unique user ID
    full_name VARCHAR(100) NOT NULL,            -- User full name
    email VARCHAR(100) UNIQUE NOT NULL,         -- Unique email
    phone VARCHAR(15),                          -- Contact number
    city VARCHAR(50),                           -- City
    gender VARCHAR(10),                         -- Gender
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert 5 users
INSERT INTO users (full_name, email, phone, city, gender) VALUES
('Rahul Sharma', 'rahul@gmail.com', '9876543210', 'Delhi', 'Male'),
('Ananya Rao', 'ananya@gmail.com', '9876543211', 'Hyderabad', 'Female'),
('Kiran Patel', 'kiran@gmail.com', '9876543212', 'Mumbai', 'Male'),
('Sneha Iyer', 'sneha@gmail.com', '9876543213', 'Chennai', 'Female'),
('Arjun Verma', 'arjun@gmail.com', '9876543214', 'Bangalore', 'Male');


-- PRODUCTS TABLE

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,   -- Unique product ID
    product_name VARCHAR(100) NOT NULL,          -- Product name
    category VARCHAR(50),                        -- Category (Mobile, Laptop, etc.)
    brand VARCHAR(50),                           -- Brand name
    price DECIMAL(10,2),                         -- Price of product
    stock INT,                                   -- Available quantity
    rating DECIMAL(2,1),                         -- Customer rating
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert 20 products
INSERT INTO products (product_name, category, brand, price, stock, rating) VALUES
('iPhone 14', 'Mobile', 'Apple', 79999, 10, 4.8),
('Galaxy S23', 'Mobile', 'Samsung', 69999, 15, 4.6),
('OnePlus 11', 'Mobile', 'OnePlus', 55999, 20, 4.5),
('MacBook Air', 'Laptop', 'Apple', 119999, 8, 4.9),
('Dell XPS 13', 'Laptop', 'Dell', 99999, 5, 4.7),
('HP Pavilion', 'Laptop', 'HP', 65000, 12, 4.3),
('Sony Headphones', 'Accessories', 'Sony', 9999, 25, 4.4),
('Boat Earbuds', 'Accessories', 'Boat', 1999, 50, 4.1),
('iPad Pro', 'Tablet', 'Apple', 89999, 7, 4.8),
('Samsung Tab S8', 'Tablet', 'Samsung', 74999, 6, 4.5),
('Nike Shoes', 'Footwear', 'Nike', 5999, 30, 4.6),
('Adidas Shoes', 'Footwear', 'Adidas', 5499, 28, 4.4),
('Puma T-shirt', 'Clothing', 'Puma', 1999, 40, 4.2),
('Levis Jeans', 'Clothing', 'Levis', 2999, 35, 4.3),
('Titan Watch', 'Accessories', 'Titan', 8999, 18, 4.5),
('Fossil Watch', 'Accessories', 'Fossil', 12999, 10, 4.6),
('Canon DSLR', 'Camera', 'Canon', 55999, 5, 4.7),
('Nikon DSLR', 'Camera', 'Nikon', 52999, 6, 4.6),
('LG TV', 'Electronics', 'LG', 45999, 9, 4.4),
('Sony TV', 'Electronics', 'Sony', 49999, 7, 4.7);


-- FAVORITES TABLE

CREATE TABLE favorites (
    fav_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    product_id INT,
    added_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (user_id) REFERENCES users(user_id)
        ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
        ON DELETE CASCADE
);

-- Sample favorites
INSERT INTO favorites (user_id, product_id) VALUES
(1, 1),
(1, 4),
(2, 3),
(2, 7),
(3, 10),
(4, 15),
(4,1),
(4,6),
(5, 2);

select * from users;
select * from products;
select * from favorites;

select u.full_name, p.product_name, p.price from users u
inner join favorites f on u.user_id = f.user_id
inner join products p on p.product_id = f.product_id;

-- show all users even if they have no favorites
select u.full_name, p.product_name from users u
left join favorites f on u.user_id = f.user_id
left join products p on p.product_id = f.product_id;

-- show all products even if no user favorited item
select u.full_name, p.product_name from users u
right join favorites f on u.user_id = f.user_id
left join products p on p.product_id = f.product_id;

-- Full join
select u.full_name, p.product_name from users u
left join favorites f on u.user_id = f.user_id
left join products p on p.product_id = f.product_id
union
select u.full_name, p.product_name from users u
right join favorites f on u.user_id = f.user_id
right join products p on p.product_id = f.product_id;

-- Every user with every product
select u.full_name, p.product_name from users u
cross join products p;

-- products of same brand
select p1.product_name as product1, p2.product_name as product2, p1.brand
from products p1 join products p2 on p1.brand=p2.brand
and p1.product_id <> p2.product_id;

