use ques;
select * from DEPT;
SELECT * FROM EMP;

# select all employes and salary who are earning more than employee 7839
select ENAME , SAL from EMP  WHERE SAL > (select sal from EMP where EMPNO =7839);

# select all employes and salary Also 7839's salary who are earning more than employee 7839
select ENAME , Sal ,(select sal from emp where EMPNO=7839) from EMP  WHERE SAL > (select sal from EMP where EMPNO =7839);

# select all the details of employee who belong to same department  as employee 7839
select * from emp where DEPT_NO = (select DEPT_NO FROM EMP WHERE EMPNO=7839);

#EMPLPOYEES WHO EARNING MORE THAN AVERAGE SALARY

Select ENAME, SAL,(SELECT AVG(SAL) FROM EMP) FROM EMP WHERE SAL > (SELECT AVG(SAL) FROM EMP);

#EMP WHO HIRED BEFOR BLAke;
select * from EMP where HIREDATE<(SELECT HIREDATE FROM EMP WHERE ENAME="BLAKE");

#employee earning more than blake but less than king
select * from EMP where Sal>(SELECT sal FROM EMP WHERE ENAME="BLAKE") and Sal<(SELECT sal FROM EMP WHERE ENAME="King");

#select all department no. which are more thanm no. of emp than depat 10
select DEPT_no ,count(*) from emp  group by DEPT_NO having count(*) >(select count(*) from emp where DEPT_NO =10);

#select all department name which are more thanm no. of emp than depat accounting

select DNAME, count(*) from EMP e join DEPT d  on e.DEPT_NO=d.DEPT_NO
group by DNAME
having count(*) > (select count(*) from emp e join DEPT d  on e.DEPT_NO=d.DEPT_NO where DNAME ="Accounting");

#3rd largest salary
select sal from Emp e where 4-1 = (select count(Distinct(sal)) from Emp e1 where e.sal<=e1.sal);


select MGR , count(*) from emp group by MGR having count(*) >=2;


select * from Emp e join Emp f on e.mgr = f.EMPNO where e.sal >f.sal;	