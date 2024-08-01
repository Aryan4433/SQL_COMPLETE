use aryan_technology;
select * from employees;



-- first , last and n th term
-- ,store procedure and trigers







select *, row_number() over(partition by department order by E_ID ) as rn from employees;