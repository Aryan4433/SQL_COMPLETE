# limit

use aryan_technology;
select * from employees;

#fetch top 10 rows 
select * from employees limit 10;

#fetch 5 people of delhi
select * from employees where Location="Delhi" limit 10;

#select top 5 highest salary of employees which all are working in delhi

select * from employees where Location="Delhi" order by Salary desc limit 5;


select * from employees;

select * from employees order by id desc limit 10;

select * from employees limit 299,10;