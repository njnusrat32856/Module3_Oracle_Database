select * from employees;
select * from jobs;

--display details of jobs where the minimum salary is greater than 10000
select *
from jobs
where min_salary > 10000;

--display first name and join date of the employees who is either IT programmer or Sales man
select first_name, hire_date
from employees
where job_id in( 'IT_PROG', 'SA_MAN');

--display details of employee with id 150 or 160
select *
from employees
where employee_id = 150
or employee_id = 160;

--display job title, the difference between minimum amd maximum sslaries for jobs with max salary in range 10000 to 20000
select job_title, (max_salary - min_salary) "Salary Difference"
from jobs
where max_salary between 10000 and 20000;