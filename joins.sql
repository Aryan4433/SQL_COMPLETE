# JOINS in sql 
# when you want to extract information from two or more tables

use aryan_technology;
create table Students(S_id int Primary Key,
S_Name varchar(255) not Null,
Age Int Check(age>=18),
C_id int);

Insert Into Students(S_id, S_Name, Age, C_id) values
(1,"Aryan",22,101),
(2,"Ritu",22,101),
(3,"Sahil",23,102),
(4,"Deepanshu",21,103),
(5,"Ryan",24,101),
(6,"Nayra",21,104),
(7,"Sam",22,104),
(8,"Riya",23,102),
(9,"Saakhi",22,104),
(10,"Harjeet",24,103);
select * from Students;

create table Courses(Course_id int Primary Key,
Course_Name varchar(255) not Null,
Location varchar(255) not Null);

Insert Into Courses(Course_id, Course_Name, Location) values
(101,"BCA","Dwarka"),
(102,"BBA","Saket"),
(103,"B.Tech","North Campus"),
(104,"Bjmc","Noida");

select * from Courses;



