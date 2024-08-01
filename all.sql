use ques;
select * from entries;

with cte11 as ( select *, rank() over(order by floor) as most_visited from entries where name="A")

, cte1 as ( select name, count(address) as Visisted ,(select count(most_visited) from cte11 where most_visited>1) as most_visited_floor , group_concat(distinct resources) as resources
from cte11 group by name having name="A") 


,cte22 as ( select *, rank() over(order by floor) as most_visited from entries where name="B")

, cte2 as ( select name, count(address) as Visisted ,(select count(most_visited) from cte22	 where most_visited>1) as most_visited_floor, group_concat(distinct resources) as resources
from cte22 group by name having name="B")

select cte1.name, cte1.Visisted, cte1.most_visited_floor, cte1.resources from cte1
union
select cte2.name, cte2.Visisted, cte2.most_visited_floor, cte2.resources from cte2;

use aryan_technology;
select * from amazon3;

select category , product ,sum(spend) as total_spend from amazon3 where year(transaction_date)=2022 group by  category , product;



select * from user;
select * from trips;
select  request_date as day , round(sum(if(status="Completed",0,1))/count(status),2) as cancellation from trips
where client_id not in (select user_id from user where banned="YES") 
and
driver_id not in (select user_id from user where banned="YES")
and
request_date between "2021-12-01" and "2021-12-03"
group by request_date;





select * from parent_child_status;

with active as ( select parent_id ,status from parent_child_status where status="Active" group by parent_id ,status )

, inactive as  (select parent_id ,status from parent_child_status as a where a.parent_id not in ( select parent_id from active ))
select * from active   union   select * from inactive  ;


select * from distance;

with cte as (select *, row_number() over() as id from distance ) 
select c.source , c.destination , c.distance from cte c join cte e on c.source = e.destination where c.id<e.id;



select * from candidate;
with junior as ( select count(positions)as junior  from candidate where positions="junior" and salary<50000)

, senior as ( select count(positions) as senior from candidate where positions="senior" and salary<30000)

select junior, senior from junior ,senior;


select * from company_revenue;

with prev as ( select *, lag(revenue,1,0) over(partition by company order by year) as previous_income from company_revenue) 

, prev1 as ( select *, case when revenue>previous_income then 1 else 0 end as flag from prev)

select company , min(flag)  from prev1 group by company having min(flag)>0;




select * from people;
select * from relations;

with m as ( select r.c_id ,p.id, p.name as father_name from people p inner join relations r on p.id=r.p_id where gender ="M") 
,f as ( select r.c_id ,p.id, p.name as mother_name from people p inner join relations r on p.id=r.p_id where gender ="F")
,c as ( select m.c_id ,m.father_name, f.mother_name from m inner join f on m.c_id = f.c_id)

select p.name, c.father_name , c.mother_name from people p inner join c on p.id = c.c_id;

