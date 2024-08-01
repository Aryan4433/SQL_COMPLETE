# JOINS in sql 
# when you want to extract information from two or more tables

use aryan_technology;
create table Students(S_id int Auto_increment Primary Key,
S_Name varchar(255) not Null,
Age Int Check(age>=18),
C_id int 