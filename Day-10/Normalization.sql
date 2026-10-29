create database normalization_demo;
use normalization_demo;

create table student_data_unnormalized(
student_id int,
student_name varchar(50),
course1 varchar(30),
course2 varchar(30),
course3 varchar(30),
department varchar(20),
advisor varchar(30)
);

-- 1NF
create table first_normalized_table(
student_id int,
student_name varchar(50),
course varchar(50),
department varchar(20),
advisor varchar(30));

-- 2NF
create table second_normalized_table_students(
student_id int primary key,
student_name varchar(50),
department varchar(20),
advisor varchar(30));

create table second_normalized_table_enrollment(
student_id int,
course varchar(50),
foreign key (student_id) references second_normalized_table_students(student_id)); 


-- 3NF
create table third_normalization_table(
department varchar(20) primary key,
advisor varchar(30));

create table students_third_normalization_table(
student_id int primary key,
student_name varchar(50),
department varchar(20),
advisor varchar(30));

create table third_normalization_table_enorollment(
student_id int,
course varchar(30),
foreign key (student_id) references third_normalization_table(student_id));

