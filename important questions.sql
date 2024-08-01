use aryan_technology;
select * from employees;
select * from employees order by salary desc;
select *, max(salary) from employees where salary not in (select max(salary) from employees);



# WAQ to find nTH highest salary;

select * from employees e1 where 6-1=(select count(distinct(salary)) from employees e2 where e2.salary>e1.salary);

#write a all employees whose holding manager post

select * from employees where DEPARTMENT="MANAGER";