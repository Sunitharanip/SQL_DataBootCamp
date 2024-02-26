-- Creating Database

CREATE DATABASE students;

-- select database
USE students;


#Creating a Table
create table grant_info(
first_name varchar(20) not null,
last_name varchar(20) not null,
student_id int not null,
department varchar(20) not null);

-- Inserting values in Table
insert into grant_info values(
"Cristiano",
"Ronaldinho",
100,
"Football");

-- query table

-- Insert multiple values

select * from grant_info;

-- delete rows from table
delete from grant_info where student_id =100;


delete from grant_info where student_id =100;

delete from grant_info where student_id =100;

