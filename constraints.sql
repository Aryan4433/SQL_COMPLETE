use Aryan_Technology;
select * from Employees;

create table Record(
ID int Auto_increment Primary Key,
Ename varchar(255) not Null,
Age Int Check(age>=18),
Gender Enum("M","F","O"),
Department varchar(255) Default "NA",
Email Varchar(255) Unique);

select * from Record;

Insert into Record(ID, Ename, Age, Gender, Department, Email)
values (2,"Aryan",32,"M","IT", "Aryan@gmail.com");
select * from Record;
Insert into Record(Ename, Age, Gender,Email)
values ("Arya",36,"M","Aryan33@gmail.com");
select * from Record;