use IB;
select * from workers_ib;

create view employees_lived_delhi
as
select * from workers_ib where address="Delhi(DEL)";

select * from employees_lived_delhi;




create view department_HR
as
select * from workers_ib where Department ="HR";

select * from department_HR;


delimiter //
create procedure employees_lived_delhi()
begin
select * from workers_ib where address="Delhi(DEL)";
end //
delimiter ;
call employees_lived_delhi();























use aryan_technology;
select * from employees;


#create store procedure and a view  for those who work in analyst department and have salary > 80000


delimiter //
create procedure analyst_80000()
begin
select * from employees where department ="Analyst" and salary>=80000;
end //
delimiter ;

call analyst_80000();

create view analystt_80000
as
select * from employees where department ="Analyst" and salary>=80000;

select * from analystt_80000;


# create view on departmnet and salary column so data retreval should be fast....
create index dep_sal on employees (department, salary);
select department from employees;

drop index dep_sal on employees;