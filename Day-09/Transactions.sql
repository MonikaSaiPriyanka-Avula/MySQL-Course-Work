create database if not exists bankdb;
use bankdb;
create table accounts(
acc_no int primary key,
name varchar(50),
balanace decimal(10,2));
insert into accounts values
(101,'arjun',15000.00),
(102,'priya',10000.00); 
select * from accounts;

select @@autocommit;
set autocommit=0;

start transaction;
update accounts
set balanace=balanace-5000
where acc_no=101;

update accounts
set balanace=balanace+5000
where acc_no=102;
select * from accounts;
commit;
select * from accounts;

start transaction;
update accounts
set balanace=balanace-2000
where acc_no=101;
select * from accounts;
rollback;


start transaction;

update accounts
set balanace=balanace-1000
where acc_no=101;

savepoint after_deduction;
update accounts
set balanace=balanace+1000
where acc_no=102;

select * from accounts;
rollback to after_deduction;
commit;


