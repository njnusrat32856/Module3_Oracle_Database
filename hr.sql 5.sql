select last_name, salary, nvl(commission_pct, 0) "NVL Func", (salary*12) + (salary*12*nvl(commission_pct, 0)) "ANN NVl Func" 
from employees;

select last_name, salary, commission_pct, (salary*12) + (salary*12*commission_pct) "ANN NVl Func" 
from employees;

select last_name, salary, commission_pct, nvl2(commission_pct, 'SAL+COMM', 'SAL') Income 
from employees
where department_id IN(50,80);

select * from employees;

select Last_name, hire_date
from employees
where hire_date > (select hire_date from employees where last_name ='Davies');

select *
from employees
where hire_date > (select hire_date from employees where first_name ='Curtis');

select *
from employees
where hire_date > (select hire_date from employees where first_name ='David' fetch first 1 rows only);

select Last_name, hire_date
from employees
where hire_date >= (select hire_date from employees where last_name ='Davies');

select last_name, job_id, salary
from employees
where job_id = (select job_id from employees where last_name='Taylor' fetch first 1 rows only)
AND salary> (select salary from employees where last_name='Taylor' fetch first 1 rows only);

select last_name, job_id, salary
from employees
where salary = (select min(salary) from employees);

select department_id, min(salary)
from employees
group by department_id
HAVING min(salary)>
(select min(salary)
from employees
where department_id=30);

--this is a wrong way
select employee_id, last_name
from employees
where salary= (
select min(salary)
from employees
group by department_id);