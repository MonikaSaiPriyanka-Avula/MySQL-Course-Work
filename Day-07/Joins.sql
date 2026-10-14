/* Types of joins
Inner Join
Equi Join
Non- Equi join
Outer join- Left join
			Right Join
            Full join
Self Join 
Natural Join
Cross Join  */ 

create database join_practice;
use join_practice;
create table users (
user_id int primary key auto_increment,
username varchar(100),
city varchar(100)
);

create table posts (
post_id int primary key auto_increment,
user_id int,
caption varchar(255),
foreign key (user_id) references users(user_id)
);

insert into users(username,city) values
('priyanka','Hyderabad'),
('sai','bangalore'),
('monika','chennai'),
('prasanna','mumbai'),
('gayathri','delhi'),
('kalyani','pune'),
('sadhana','kolkata'),
('lakshmi','jaipur'),
('lohitha','ahmedabad'),
('mounasri','lucknow');

insert into posts(user_id,caption) values
(1,'Morning workout'),
(2,'Learning sql joins'),
(3,'Data analytics journey'),
(1,'weekend trip'),
(4,'office presentation'),
(5,'startup ideas'),
(1,'test post without valid user'),
(3,'Python practice'),
(7,'cloud computing basics'),
(2,'another invalid user post');

select * from posts;
select * from users;

-- inner join
select u.username,p.caption
from users u inner join posts p
on u.user_id=p.user_id;

-- equi join
select u.username,p.caption
from users u , posts p
where u.user_id=p.user_id;

-- non equi join
select u.username,p.caption
from users u , posts p
where u.user_id <> p.user_id;

-- natural join
select * from users
natural join posts;

-- left join
select u.username,p.caption 
from users u left join posts p
on u.user_id=p.user_id;

-- right join
select u.username,p.caption
from users u right join posts p
on u.user_id=p.user_id;

-- Full join
select u.username,p.caption 
from users u left join posts p
on u.user_id=p.user_id
union
select u.username,p.caption
from users u right join posts p
on u.user_id=p.user_id;

-- cross join
select u.username,p.caption
from users u cross join posts p;
