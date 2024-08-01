use aryan_technology;
CREATE TABLE tableNamessss (
    date	VARCHAR(512),
    StockPrice	DOUBLE
);

INSERT INTO tableNamessss (date, StockPrice) VALUES ('2023-01-01', '342.44');
INSERT INTO tableNamessss (date, StockPrice) VALUES ('2023-01-02', '183.09');
INSERT INTO tableNamessss (date, StockPrice) VALUES ('2023-01-03', '328.22');
INSERT INTO tableNamessss (date, StockPrice) VALUES ('2023-01-04', '393.11');
INSERT INTO tableNamessss (date, StockPrice) VALUES ('2023-01-05', '435.92');

select * from tablenamessss;



-- find rolling average-- 


select date,stockprice, avg(stockprice) 
over(order by date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) as rolling_avg
 from tablenamessss order by date;
 
--   Running total--

select date,stockprice, sum(stockprice) 
over(order by date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) as rolling_avg
 from tablenamessss order by date;
  
