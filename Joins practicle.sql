use aryan_technology;
create table joins(student_id int primary key,student_name varchar(20) , age int, Course_id int);
Insert Into joins(student_id,student_name,age,Course_id) 
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
(10,"Harjeet",24,103),
(11,"neha",20,null ),
(12,"Sneha",21,null);
select * from joins;

create table EX(Course_id int, Course_Name varchar(20), Location varchar(30));
Insert Into EX(Course_id,Course_Name, Location) 
values 
(101,"BCA","TIPS"),
(102,"BBA","VIPS"),
(103,"BJMC","JIMS"),
(104,"BALLB","BIPS");

Insert Into EX(Course_id,Course_Name, Location) 
values 
(105,"BTECH","MSIT");

select * from EX;




#joins-----inner----left----right---cross

#fetch all the student name , age of tghe student who enrolled in the courses  also mention course name and location.....

select Student_Name, Age, Course_Name, Location from joins Inner join EX on joins.Course_id = EX.Course_id;

select Student_Name, Age, Course_Name, Location from joins Left join EX on joins.Course_id = EX.Course_id;

select Student_Name, Age, Course_Name, Location from joins Right join EX on joins.Course_id = EX.Course_id;

select Student_Name, Age, Course_Name, Location from joins CROSS join EX on joins.Course_id = EX.Course_id;


#FULL JOIN USE UNION
Select Student_Name, Age, Course_Name, Location from joins Left join EX on joins.Course_id = EX.Course_id
union
select Student_Name, Age, Course_Name, Location from joins Right join EX on joins.Course_id = EX.Course_id;


 