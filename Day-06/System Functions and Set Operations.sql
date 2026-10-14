create database amazon;
use amazon;

-- System Functions
select version();
select database();
select user();
select connection_id();

create table customers(
id int auto_increment primary key,
name varchar(50),
city varchar(50)
);
insert into customers(name,city)
values('Priyanka', 'Hyd');

select last_insert_id();

create table online_customers (
id int,
name varchar(50)
);

create table store_customers (
id int,
name varchar(50)
);

insert into online_customers values
(1, 'priyanka'),
(2, 'sai'),
(3, 'monika'),
(4, 'prasanna'),
(5, 'gayathri'),
(6, 'kalyani'),
(7, 'sadhana'),
(8, 'lakshmi'),
(9, 'chaitanya');

insert into store_customers values
(1, 'priyanka'),
(2, 'sameera'),
(3, 'swathi'),
(4, 'prasanna'),
(5, 'gousya'),
(6, 'kalyani'),
(7, 'surekha'),
(8, 'divya'),
(9, 'chaitanya');

select name from online_customers
union
select name from store_customers;

select name from online_customers
union all
select name from store_customers;

select name from online_customers
where name in (select name from store_customers);

select name from online_customers
where name not in (select name from store_customers);

