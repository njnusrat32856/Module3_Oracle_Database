--Practice-3. Task 3
select last_name, salary
from employees
where salary not between 5000 and 12000;

--Task 5
select last_name, department_id
from employees
where department_id in(20, 50)
order by last_name;

--Task 6
select last_name as "Employee", salary "Monthly Salary"
from employees
where salary between 5000 and 12000
AND department_id in (20, 50);

--Task 9
select last_name, salary, commission_pct
from employees
where commission_pct is not null
order by 2 desc, 3 desc;

--Task 15
select last_name, salary, commission_pct
from employees
where commission_pct =0.2;

--Task 2
select last_name, department_id
from employees
where employee_id = 176;

--Chapter-4 Task 2
select employee_id, last_name, salary, round(salary+(salary*.155)) "New Salary"
from employees;

--Chapter-4 Task 4
select employee_id, last_name, salary, salary+(salary*.155) "New Salary", salary*.155 "Increase"
from employees;

--Task 5
select initcap(last_name),length(last_name)
from employees
where last_name like 'J%' or last_name like 'A%' or last_name like 'M%';
select initcap(last_name), length(last_name)
from employees
where substr(last_name,1,1) in('J', 'M','A');

--Task 7
select last_name, lpad(salary,15,'$') Salary
from employees;

--Chapter 5 Task 1
select last_name|| ' earn '||to_char(salary, 'fm$99999999.00')|| ' monthly but wants '||to_char(salary*3, 'fm$99999999.00')||'.' "Dream Salaries"
from employees;

--Task 2
select last_name, hire_date, 
to_char(next_day(add_months(hire_date,6),'Monday'),'fmDay, "the" Ddspth "of" Month, YYYY') Review
from employees;