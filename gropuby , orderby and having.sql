use Aryan_Technology;
select * from Employees;

select E_Name, length(E_Name) From Employees order by length(E_Name) Desc , E_Name limit 1; 

select E_Name , Length(E_Name) from Employees order by Length(E_Name), E_NAME LIMIT 1;








#Groupby  , order by and having clause
#WAO to determine how many employees are working in various department ?

Select Department,Count(*) from Employees Group By Department;
Select Department,Count(*) from Employees Group By Department order by Count(*);
Select Department,Count(*) from Employees Group By Department order by Count(*) DESC;

#fetch how many employees are working in various departments of delhi
Select Department,Count(*) from Employees where Location ="Delhi" Group By Department order by count(*);


#having used to give condition in group by
#fetch how many employees are working in various departments of delhi and where no. of employees > 50 
Select Department,Count(*) from Employees where Location ="Delhi" Group By Department having count(*)>50 order by count(*);


#Alter- add delete modify in table 
#you want to add new column in table

Alter Table Employees Add Column Sales Int;

select * from Employees;

#you want to drop column

Alter Table Employees Drop Column Sales;

select * from Employees;

#if you want to rename a column

Alter table Employees Rename column E_ID To ID;

select * from Employees;

#Update 
 select * from Employees;
 set SQL_safe_updates=0;
 UPDATE Employees SET SALARY=35000 WHERE ID=2;
  select * from Employees;
  
  
#filling null values in sales
Alter Table Employees Add Column Sales Int;

select * from Employees;

UPDATE Employees SET Sales= 10000+rand()*90000 where Sales is Null;
select * from Employees;