use aryan_technology;

create table aryy(name varchar(20) ,salary integer , department varchar(20));
Insert into aryy(name,salary,department) values
("Aryan",60000,"IT"),
("ryan",34000,"sales"),
("Arya",60000,"business"),
("Ritu",56000,"IT"),
("Nayra",60000,"IT"),
("Naya",Null,Null),
("Riya",30000,"IT"),
("Ayan",Null,Null);
select * from aryy;

select Avg(salary) from aryy;
set SQL_SAFE_UPDATES=0;
update aryy set salary= 50000 where salary is Null;
select * from aryy;

select Department , count(*) from aryy group by Department;
update aryy set Department = "IT" where Department is Null;
select * from aryy;