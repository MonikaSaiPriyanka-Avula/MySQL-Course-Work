USE FLIPKART;
-- ==========================
--  ARTHEMATIC OPERATORS
-- ==========================

-- ADDITION
select productname ,price ,price + (price*0.05) as Increased_price from products;

-- SUBTRACTION
select productname ,price ,price - (price*0.5) as Decresed_price from products;

-- MULTIPLICATION
select productname ,price ,price *2  as price_remainder from products;

-- DIVISION
select productname ,price ,price /2 as halved_price from products;

-- MODULAR(remainder)
select productname ,price ,price % 3 as price_remainder from products;

-- ==========================================
-- COMPARISION OPERATORS
-- ===========================================

-- equal 
select * from products 
where category = 'furniture';

-- not equal
select * from products 
where category <> 'Electronics';

-- greater than
select * from products 
where price > 2000 ;

-- less than
select * from products 
where stock < 30 ;

-- greater than  OR equal
select * from products 
where price >= 2000 ;

-- less than  OR equal
select * from products 
where stock <=50 ;

-- IS NULL
select * from products 
where category IS NULL;

-- IS NOT NULL
select * from products 
where category IS NOT NULL;

-- ================================================
-- RELATIONAL OPERATORS OR LOGICAL OPERATORS
-- =================================================

-- AND 
SELECT * FROM PRODUCTS
where category = 'furniture' and price >2000;

-- OR
SELECT * FROM PRODUCTS
where category = 'furniture' or category = 'electronics';

-- NOT
SELECT * FROM PRODUCTS
where  NOT category = 'furniture' ;
-- ===============================
-- BITWISE OPERATORS
-- ================================

-- Bitwise AND (0,0 =0 ; 0,1 =1 ; 1,0 = ; 1,1 = )
select 10 & 6 as bitwiseAND;

-- Bitwise OR (0,0 =0 ; 0,1 =1 ; 1,0 = ; 1,1 = )
select 10 | 6 as bitwiseOR;

-- Bitwise XOR (0,0 =0 ; 0,1 =1 ; 1,0 = ; 1,1 = )
select 10 ^ 6 as bitwiseXOR;

-- Bitwise NOT
select ~10 as bitwiseNOT;

-- Left shift
select 10 << 6 as leftshift;

-- right shift
select 6 >> 2 as rightshift;
-- ==============================
-- ASSIGNMENT OPERATORS
-- ===============================

SET @total := 100;
select @total;
select @total as assigned_value;






















