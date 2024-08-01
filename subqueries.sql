use aryan_technology;
select * from employees;
#find  out the salary of those employees whose salary is greater than salary of average salary of all the employees;

select round(Avg(SALARY)) from employees;
select * from employees where salary >(select Avg(SALARY) from employees);


#scaler subquery
#only return one coloumn and one row

#Multiple row subquery    
#return multiple row and multiple column
#return one column and multiple row



#find out the employees who earn highhest salary in each departmnet
select DEPARTMENT, max(SALARY) from employees group by DEPARTMENT;

select * from employees where(DEPARTMENT,SALARY) in (select DEPARTMENT, max(SALARY) from employees group by DEPARTMENT);

# find the employees in each depatment who earn  more than average salary in that department;
select * from employees where salary > (select Avg(salary) , department from employees where Department = "Specific_dept" group by department);





#2ND HIGHEST SALARY
SELECT * FROM EMPLOYEES e1 WHERE 2-1 = (SELECT count(distinct(salary)) from employees e2 where e2.salary > e1.salary);
#2nd lowest salary
select * from employees e1 where 2-1 = (select count(distinct(salary)) from employees e2 where e2.salary<e1.salary);


SELECT *,DEPARTMENT, AVG(SALARY) OVER (PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS AvgSalary FROM employees;
