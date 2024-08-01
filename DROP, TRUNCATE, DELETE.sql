use aryan_technology;
create table Example(student_id int primary key,student_name varchar(20) , age int, Course_id int);
Insert Into Example(student_id,student_name,age,Course_id) 
values 
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

-- DROP Remove TABLE
-- TRUNCATE REMOVE ALL RECORDS
-- DELETE REMOVE ONLY ONE RECORD





#deletw id=10 from example table 
set SQL_SAFE_UPDATES=0;
Delete from Example where student_id=2;
select * from Example;

#EMPLY ALL RECORDS FROM EXAMPLE TABLE
Truncate table Example;
select * from Example;

#REMOVE EXAMPLE TABLE
Drop table EXAMPLE;
select * from Example;