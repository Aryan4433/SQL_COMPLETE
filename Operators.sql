#Comparison Operator 

USE Aryan_Technology;
select * from Employees;
#Fetch data where of employess whose salary is greater than 60k
select * from Employees where SALARY>60000;

#Fetch data where of employess whose salary is less than 60k
select * from Employees where SALARY<60000;

#Fetch data where of employess whose salary is atleast 60k
select * from Employees where SALARY>=60000;

#Fetch data where of employess whose Age is atmost 25
select * from Employees where AGE<=25;

#Fetch data where of employess whose Location is Pune
select * from Employees where LOCATION>="PUNE";


#Logical Operator
#OR
#fetch the dat of employees where employess are working in delhi ,pune and banglore
select * from Employees where LOCATION="Delhi" or LOCATION="Pune" or LOCATION= "Banglore";
#AND
#fetch the dat of employees where employess are working in delhi and salary is 25 k
select * from Employees where LOCATION="Delhi" And Salary=25000 ;
#Not
#fetch the dat of employees where employess are working in various location except delhi 
select * from Employees where LOCATION<>"Delhi";
select * from Employees where LOCATION!="Delhi";



#Membership Operator
#IN
#fetch the data of employees where employess are working in delhi ,pune 
select * from Employees where LOCATION IN ("Delhi","Pune");

#Not IN
#fetch the dat of employees where employess are NOT working in delhi ,pune and banglore
select * from Employees where LOCATION nOT IN ("Delhi","Pune");

#Between
#fetch the data of empoloyees where salary is atmost 35k and atleast 25k
select * from Employees where SALARY>=20000 and SALARY<=35000;
select * from Employees where SALARY BETWEEN 20000 and 35000;


# Aggregation Function

#1) min
select MIN(Salary) from Employees;
#2) max
select Max(Salary) from Employees;
#3) Sum
select Sum(Salary) from Employees;
#4) Avg
select Round(Avg(Salary)) from Employees;
#5) Count
select Count(*) from Employees;
#6) Distinct 
select Department from Employees;
select Count(distinct(Department)) from Employees;

#employees salary > average salary
select * from Employees where SALARY > 67049;

#nested queries or subqueries are same;
select * from Employees where SALARY > (select Round(Avg(Salary)) from Employees) and LOCATION="Delhi";
select round(Avg(SALARY)) from employees where Location="Delhi";
  
select * from Employees where SALARY > 82823;

select * from Employees where LOCATION="Delhi"  and SALARY  > (select Round(Avg(Salary)) from Employees) ;


select * from Employees where LOCATION="Delhi"  and SALARY > (select Round(Avg(Salary)) from Employees where Location="Mumbai");

#fetch salary of employees working in delhi which is greater than maximum salary of employees working in pune
select count(*) from Employees where LOCATION="Delhi" and SALARY > (select Max(Salary) from Employees where Location="Pune");

#fetch the department in data where employuee are earning less tham avg sal of employee worki in gurgram
select Distinct(DEPARTMENT) from Employees Where SALARY < (select Round(Avg(salary)) from Employees where LOCATION="Gurgram");
select * from Employees;
select * from Employees where LOCATION="Mumbai" and Salary > (select Round(Avg(salary)) from Employees where LOCATION="Delhi") ;


select * from Employees where LOCATION = "DELHI" and DEPARTMENT="Analyst" and Age<=40 and Salary > (select Round(Avg(salary)) from Employees where LOCATION="Pune" and DEPARTMENT ="Sales Person" and Age >= 40 )