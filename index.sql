# create view on departmnet and salary column so data retreval should be fast....
create index dep_sal on employees (department, salary);
select department from employees;

drop index dep_sal on employees;