create database instagramDB;
show databases;
use instagramDB;
create table users(
userid int primary key,
username varchar(50) unique not null,
fullname varchar(50) not null,
email varchar(100) unique not null,
password varchar(20) not null,
bio text,
isverified boolean default false,
createdat datetime default current_timestamp
);
describe users;
alter table users
add column mobilenumber varchar(15);
alter table users
modify column fullname varchar(150);
alter table users
change column bio biography text;
alter table users
drop column createdat;
alter table users
rename to userinfo;
desc userinfo;
Truncate table userinfo;
drop table userinfo;
create table posts (
postid int primary key,
userid int not null,
caption text,
imageurl varchar(255) not null,
likescount int default 0,
createdat timestamp default current_timestamp,
foreign key (userid) references users(userid)
);
create table comments(
commentid int primary key,
postid int not null,
userid int not null,
commenttext varchar(255) not null,
createdat datetime default current_timestamp,
foreign key (postid) references posts(postid),
foreign key (userid) references users(userid) 
); 
select * from users;
insert into users(userid,username,fullname,email,password)
value(1,'priyanka','priyanka','priyanka@gmail.com','priyanka@123');
insert into users(userid,username,fullname,email,password) 
values(2,'monika','monika','monika@gmail.com','monika@123'),
(3,'prasanna','prasanna','prasanna@gmail.com','prasanna@123'),
(4,'gayathri','gayathri','gayathri@gmail.com','gayathri@123');
insert into users
value(6,'sai','sai','sai@gmail.com','sai@123','',True,'2026-10-08 17:30:57');
insert into users
values(7,'kalyani','kalyani','kalyani@gmail.com','kalyani@123','',True,'2026-10-08 17:30:57'),
(8,'lakshmi','lakshmi','lakshmi@gmail.com','lakshmi@123','',True,'2026-10-08 17:30:57'),
(9,'sadhana','sadhana','sadhana@gmail.com','sadhana@123','',True,'2026-10-08 17:30:57');
update users
set biography="coder"
where userid=2;
update users
set isverified=True
where userid=3;
update users
set password="sai12"
where email="sai@gmail.com";
select @@sql_safe_updates;
set sql_safe_updates=0;
update users
set isverified=True;
delete from users
where userid=6;
delete from users
where fullname="sai";
delete from users
where biography="coder"



