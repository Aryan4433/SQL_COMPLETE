#store procedure: is used to save tables
use aryan_technology;
select * from employees;

#create a store procedure and map those who have salary > 80000 is high payed employees
delimiter //
create procedure High_payed_employees()
begin
select * from employees
where salary>=80000;
end //
delimiter ;

call high_payed_employees();



#Trigger : IT change on condition like if salry is less than 20000 the trigger it to 20000, if marks is -ve then mak eit 0

#CREATE A TIGEERR FOR CHECKING MARKS IN DATA IF MARKS LESS THE 0 THEN MAKE IT 20 


create database school;
use school;
create table data(Roll_number int, Age int, s_name varchar(20), marks float);

delimiter //
create trigger marks_checker
before insert on data
for each row
if New.marks<0 then set New.marks=20;
end if; //

insert into data(Roll_number , Age, S_name, Marks) values 
(01,12,"Aryan",99),
(02,12,"ritu",-66.0);
select * from data;


