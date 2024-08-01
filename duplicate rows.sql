use aryan_technology;

CREATE TABLE Emp (
    EmpID int,
    EmpName varchar(255),
    Managerid int,
    Deptid int,
    Salary int
);

INSERT INTO Emp (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (1, 'Sachin', 3, 1, 6000);

INSERT INTO Emp (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (2, 'Rahul', 3, 1, 7000);

INSERT INTO Emp (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (3, 'Sourav', 5, 1, 10000);

INSERT INTO Emp (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (4, 'Kapil', 5, 1, 8000);

INSERT INTO Emp (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (5, 'Gavaskar', 0, 1, 9000);

INSERT INTO Emp (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (6, 'Mohit', 7, 2, 6000);

INSERT INTO Emp (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (7, 'Paras', 0, 2, 8000);

INSERT INTO Emp (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (8, 'Sourav', 5, 1, 10000);

INSERT INTO Emp (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (9, 'Paras', 0, 2, 8000);

select * from Emp;

#Duplicate rows in table
select EmpName, Managerid, max(EmpID) from Emp group by Managerid, EmpName having count(*)>1; 


#remove duplicate rows from table
SET SQL_SAFE_UPDATES = 0;
Delete From Emp where EmpID in (Select EmpID from (select *, row_number() over(partition by EmpName, Managerid)  as rnk from Emp) as x where x.rnk>1);


Select * FROM DETAILS;