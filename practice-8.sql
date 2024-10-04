--Chapter-8
--Task-2
select employee_id, last_name, salary
from employees
where salary >(select avg(salary) from employees)
order by 3;

--Task-3
select employee_id, last_name
from employees
where department_id in 
 (select department_id 
  from employees 
  where last_name like '%u%');
  
--Task-4
select e.last_name, e.department_id, e.job_id
from employees e
join departments d on e.department_id = d.department_id
where d.location_id=1700;

--Task-5
select last_name, salary
from employees
where manager_id in
(select employee_id
from employees
where last_name= 'King');

--Task-6
select department_id, last_name, job_id
from employees
where department_id in
(select department_id
from departments
where department_name ='Executive');

--Task-7
select last_name
from employees
where salary > any
(select salary
from employees
where department_id = 60);
select last_name
from employees
where salary >
(select min(salary)
from employees
where department_id = 60);

--Task-8
select employee_id, last_name, salary
from employees
where salary >
(select avg(salary)
from employees)
and department_id in
(select department_id
from employees
where last_name like '%u%');