CREATE TABLE sales_reps(
id number(4) not null,
name VARCHAR2(30) not NULL,
salary number(8,2),
commission_pct NUMBER(2,2),
CONSTRAINT const_sales_reps_id PRIMARY KEY(id)
);

insert into sales_reps(id,name,salary,commission_pct)
select employee_id, last_name, salary, commission_pct
from employees
where job_id like '%REP';

commit;

update employees
set (job_id,salary) = (select job_id,salary
from employees
where employee_id = 205)
where employee_id =103;

update employees
set (job_id,salary) = (select job_id,salary
from employees
where employee_id = 101)
where employee_id =100;

UPDATE employees
set department_id = (select department_id from employees where employee_id = 103)
where job_id = (select job_id from employees where employee_id = 100);


DELETE FROM sales_reps;

SELECT * FROM employees;
SELECT * FROM sales_reps;

UPDATE sales_reps
SET commission_pct=.25
where id=202;

ROLLBACK;