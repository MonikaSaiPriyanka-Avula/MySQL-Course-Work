create database training_center;
use training_center;

-- create students table
create table students(
student_id int primary key,
student_name varchar(50),
age int,
city varchar(50),
course varchar(50),
fee int
);

-- create trainers table
create table trainers(
trainer_id int primary key,
trainer_name varchar(50),
experinece int,
subject varchar(50),
salary int
);

-- create courses table
create table courses(
course_id int primary key,
course_name varchar(50),
duration_months int,
fees int
);

-- Insert values into students
INSERT INTO students (student_id, student_name, age, city, course, fee)
VALUES
(1, 'Ravi', 21, 'Hyderabad', 'Python', 25000),
(2, 'Priya', 22, 'Vijayawada', 'Java', 30000),
(3, 'Arun', 20, 'Guntur', 'SQL', 15000),
(4, 'Sneha', 23, 'Chennai', 'Data Science', 45000),
(5, 'Kiran', 21, 'Bangalore', 'Python', 25000),
(6, 'Divya', 22, 'Hyderabad', 'Java', 30000),
(7, 'Rahul', 24, 'Mumbai', 'Web Development', 35000),
(8, 'Anusha', 20, 'Guntur', 'SQL', 15000),
(9, 'Vamsi', 23, 'Delhi', 'Data Science', 45000),
(10, 'Keerthi', 21, 'Vijayawada', 'Python', 25000),
(11, 'Suresh', 25, 'Chennai', 'Java', 30000),
(12, 'Pooja', 22, 'Bangalore', 'Web Development', 35000),
(13, 'Nikhil', 20, 'Hyderabad', 'SQL', 15000),
(14, 'Harika', 24, 'Mumbai', 'Data Science', 45000),
(15, 'Manoj', 21, 'Delhi', 'Python', 25000),
(16, 'Sravani', 23, 'Guntur', 'Java', 30000),
(17, 'Tarun', 22, 'Vijayawada', 'Web Development', 35000),
(18, 'Meghana', 20, 'Chennai', 'SQL', 15000),
(19, 'Sai', 25, 'Bangalore', 'Data Science', 45000),
(20, 'Lakshmi', 21, 'Hyderabad', 'Python', 25000);


-- Insert values into trainers 
INSERT INTO trainers (trainer_id, trainer_name, experinece, subject, salary)
VALUES
(1, 'Ramesh', 5, 'Python', 45000),
(2, 'Sowmya', 3, 'Java', 35000),
(3, 'Praveen', 7, 'MySQL', 55000),
(4, 'Anjali', 4, 'Data Science', 50000),
(5, 'Karthik', 6, 'Web Development', 48000),
(6, 'Bhavya', 2, 'Python', 30000),
(7, 'Naveen', 8, 'Java', 60000),
(8, 'Deepika', 5, 'Machine Learning', 52000),
(9, 'Sandeep', 3, 'MySQL', 38000),
(10, 'Lavanya', 9, 'Data Science', 65000),
(11, 'Harish', 4, 'C Programming', 40000),
(12, 'Swathi', 6, 'Web Development', 50000),
(13, 'Gopal', 10, 'Python', 70000),
(14, 'Mounika', 2, 'Java', 32000),
(15, 'Chaitanya', 7, 'Machine Learning', 58000),
(16, 'Pallavi', 3, 'C Programming', 36000),
(17, 'Vikram', 5, 'MySQL', 46000),
(18, 'Sindhu', 8, 'Web Development', 62000),
(19, 'Rohit', 4, 'Data Science', 47000),
(20, 'Kavya', 6, 'Java', 49000);


-- Insert values into courses
INSERT INTO courses (course_id, course_name, duration_months, fees)
VALUES
(1, 'Python Full Stack', 6, 35000),
(2, 'Java Full Stack', 6, 40000),
(3, 'Data Science', 8, 60000),
(4, 'Machine Learning', 5, 45000),
(5, 'Web Development', 4, 25000),
(6, 'SQL and Database', 2, 12000),
(7, 'C Programming', 2, 8000),
(8, 'C++ Programming', 3, 15000),
(9, 'Artificial Intelligence', 6, 55000),
(10, 'Power BI', 3, 20000),
(11, 'Cloud Computing', 5, 40000),
(12, 'Cyber Security', 6, 50000),
(13, 'DevOps', 5, 45000),
(14, 'React JS', 3, 22000),
(15, 'Django Development', 3, 18000),
(16, 'Android Development', 5, 35000),
(17, 'Software Testing', 4, 28000),
(18, 'Data Analytics', 4, 30000),
(19, 'AWS Cloud', 3, 25000),
(20, 'Generative AI', 4, 38000);

select * from students;
select * from trainers;
select * from courses;

-- view 1: Python students only
create view python_students_view as
select student_name, city
from students
where course="Python";

select * from python_students_view;

-- view 2: High fee students
create view high_fee_students_view as
select student_name,fee
from students
where fee > 30000;

select * from high_fee_students_view;

-- view 3: Experienced trainers
create view experineced_trainers_view as
select trainer_name, experinece
from trainers
where experinece >4;

select * from experineced_trainers_view;

-- view 4: short duration courses
create view short_courses_view as
select course_name, duration_months
from courses
where duration_months <4; 

select * from short_courses_view;

-- view 5: student fee summary
create view student_fee_summary as
select count(*) as total_students,
sum(fee) as total,
avg(fee) as average_fees
from students;

select * from student_fee_summary;

-- virtual tables
SHOW FULL TABLES WHERE TABLE_TYPE='VIEW';

-- base tables
SHOW FULL TABLES WHERE TABLE_TYPE!='VIEW';

-- delete view
drop view student_fee_summary;



-- 