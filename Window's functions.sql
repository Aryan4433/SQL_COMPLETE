#WINDOW'S FUNCTIONS
#1) over() used to partition datra into window 

use aryan_technology;
select * from employees;

select Department ,name,  max(salary) from employees group by department;  
#we cant use 2 columns for groupby  only use 1

select Department ,  max(salary) from employees group by department;  

Select * , max(salary) over() from employees; 

#now we want max salary of each department in new columns
select *, max(salary) over(partition by department order by salary desc) as max_salary from employees;


#2) Row_number(): is used to give number to row 
select * ,row_number() over()  as row_number1 from employees;

select *,row_number( ) over(partition by department) as row_number1 from employees;

#3) rank() : used to give rank to rows data it skip 1-1-3
select *,rank() over(partition by department order by salary desc) as rnk from employees;

#4) dense_rank() : used to give rank to rows data but cant skip any rank 1-1-2
select *,dense_rank() over(partition by department order by salary desc) as D_rnk from employees;

#5) lag(): previous data return krta h & lead(): formward data return krata h data me se
select *, lag(salary) over(partition by department order by salary desc) previous_salary,
 lead(salary) over(partition by department order by salary desc) forward_salary from employees;



 

 