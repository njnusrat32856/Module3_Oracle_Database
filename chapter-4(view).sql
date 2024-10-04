CREATE VIEW view_emp_100_days
as
select DISTINCT(job_id)
from employees
where current_date - hire_date > 100
group by job_id
having count(employee_id) > 3;

SELECT * FROM view_emp_100_days;

create VIEW empvu80
as
select employee_id, last_name, salary
from employees
where department_id= 80;

DESCRIBE view_emp_100_days;

DESCRIBE empvu80;

select * FROM empvu80;