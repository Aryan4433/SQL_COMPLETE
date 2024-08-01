use aryan_technology;

create table order2( Id integer , order_date date);

insert into order2(Id,order_date) value (1,"2020-01-01"),(1,"2020-01-02"),(2,"2020-02-11"),(2,"2020-02-12"),(3,"2020-03-04"),(3,"2020-03-22");

select * from order2;


select Id, order_date, row_number() over(partition by ID order by order_date) as previous_date from order2 group by Id,order_date;


with cte as(
select Id, order_date, lag(order_date,1) over(partition by ID order by order_date) as previous_date from order2 group by Id,order_date)

select Distinct(Id) from cte where order_date=previous_date + interval'1'day;



create table order5( Id integer , order_date date);

insert into order5(Id,order_date) value (1,"2020-01-01"),(1,"2020-02-01"),(2,"2020-02-11"),(2,"2020-02-12"),(3,"2020-03-04"),(3,"2020-03-22");

select * from order5;




with cte1 as(
select Id, order_date, lag(order_date) over(partition by ID order by order_date) as previous_date from order5 group by Id,order_date)
select distinct(Id) from cte1 where order_date=previous_date + interval'1'Month;



CREATE TABLE Customers (
    CustomerName VARCHAR(50),
    Balance INT
);

INSERT INTO Customers (CustomerName, Balance)
VALUES 
('John Doe', 1000),
('Jane Smith', 2000),
('Bob Johnson', 500),
('Alice Brown', 3000);

select * from Customers;

select * from (select * ,row_number() over(order by Balance desc) as rnk from Customers)a where a.rnk<=3;


CREATE TABLE AccountBalances (
    AccountID INT,
    BranchID INT,
    BalanceDate DATE,
    Balance INT
);

INSERT INTO AccountBalances (AccountID, BranchID, BalanceDate, Balance)
VALUES 
(1, 1, '2023-01-01', 1000),
(2, 1, '2023-01-15', 2000),
(3, 2, '2023-01-20', 3000),
(4, 2, '2023-02-01', 4000),
(5, 3, '2023-02-15', 5000);


select distinct(BranchID),Avg(Balance) over(partition by BranchID) as Avg_branch_valance from AccountBalances;
