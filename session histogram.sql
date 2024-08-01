use ques;
create table session(Date date , user_id integer,session_id varchar(25), event varchar(10));
insert into session(Date, user_id,session_id,event) values 
("2022-08-24",1,"2fg3-4ujci3-4-je4","browser"),
("2022-08-24",2,"4rewd-4ujci334-je4","click"),
("2022-08-24",3,"6thdbfe4ujci3-34je4","like"),
("2022-08-24",4,"7feggtrg4ujci3-3-je4","comment"),
("2022-08-24",5,"7fg3geg42ci3-3-je4","share"),
("2022-08-24",1,"t8rr3fg3-4wtgri3-34-je4","browser"),
("2022-08-24",2,"fergeg-34-je4","click"),
("2022-08-24",6,"fggrtee3-4ujci3-4","browser"),
("2022-08-24",7,"4fggerrte4ui3-34-4","comment");
select * from session;


create table session_duration(Date date ,session_id varchar(25), duration integer);
insert into session_duration(Date,session_id, duration) values 
("2022-08-24","2fg3-4ujci3-4-je4",8),
("2022-08-24","4rewd-4ujci334-je4",15),
("2022-08-24","6thdbfe4ujci3-34je4",22),
("2022-08-24","7feggtrg4ujci3-3-je4",18),
("2022-08-24","7fg3geg42ci3-3-je4",47),
("2022-08-24","t8rr3fg3-4wtgri3-34-je4",6),
("2022-08-24","fergeg-34-je4",41),
("2022-08-24","fggrtee3-4ujci3-4",120),
("2022-08-24","4fggerrte4ui3-34-4",6);
select * from session_duration;

select s.user_id , Avg(sd.duration) as 'time' from session s  join session_duration sd on s.session_id=sd.session_id group by user_id;


with temp as (

select s.user_id , Avg(sd.duration) as 'time' from session s  join session_duration sd on s.session_id=sd.session_id group by user_id

),temp1 as 
(
select user_id,time, 
case 
when time < 10 then "<10"
when time between 10 and 60 then "10,60"
ELSE ">60"
end as "category" 
from temp)

select category, count(category) from temp1 group by category;





with temp as (

select s.user_id , Avg(sd.duration) as 'time' from session s  join session_duration sd on s.session_id=sd.session_id group by user_id

) 

select user_id,time, 
case 
when time < 10 then "<10"
when time between 10 and 60 then "10,60"
ELSE ">60"
end as "category" 
from temp;