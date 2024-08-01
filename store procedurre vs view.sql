#view and store procedure 

use aryan_technology;
select * from employees;
#create a store procedure and map those who have salary > 80000 is high payed employees

delimiter //
create procedure high_salary_employees()
begin
select * from employees where salary>80000;
end //
delimiter ;

call high_salary_employees();


	create view high_salary_employees 
	as
select * from employees where salary>80000 and E_name="Aryan";

select * from high_salary_employees ;




