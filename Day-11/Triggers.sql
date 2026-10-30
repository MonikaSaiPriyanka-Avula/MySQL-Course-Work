create database instagram_demo;
use instagram_demo;

create table users(
user_id int primary key auto_increment,
name varchar(100));

create table posts(
post_id int primary key auto_increment,
user_id int,
caption varchar(255),
likes int default 0);

create table post_likes1(
like_id int primary key auto_increment,
user_id int,
post_id int);

create table post_history(
history_id int primary key auto_increment,
post_id int,
old_caption varchar(255),
new_caption varchar(255),
changed_at timestamp default current_timestamp);

create table deleted_likes(
like_id int,
user_id int,
post_id int,
deleted_at timestamp default current_timestamp);

insert into users(name)
values
('rahul'),
('priya'),
('arun');

select * from users;

insert into posts(user_id,caption,likes)
values
(1,'my friend post',0),
(2,'my travel photo',0),
(3,'my new bike',0);

select * from posts;

delimiter //
create trigger increase_post_likes
after insert
on post_likes
for each row
begin
update posts
set likes=likes+1
where post_id=new.post_id;
end//
delimiter ;

delimiter //
create trigger decrease_post_likes
after delete
on post_likes
for each row
begin
update posts
set likes=likes-1
where post_id=old.post_id;
end //
delimiter ;

delimiter //
create trigger post_caption_history
after update
on posts
for each row
begin
if old.caption <> new.caption then
insert into post_history (post_id,old_caption,new_caption)
values(new.post_id,old.caption,new.caption);
end if;
end //
delimiter //








