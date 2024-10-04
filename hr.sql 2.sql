select count(commission_pct)
from employees;

select avg(nvl(commission_pct,0))
from employees
where commission_pct is null;

select department_id, job_id, avg(salary)
from employees
group by job_id, department_id;

select job_id, avg(salary)
from employees
group by job_id;

select department_id, round(avg(salary))
from employees
group by department_id;

select department_id, SUM(salary)
from employees
group by department_id
order by sum(salary) DESC;

select department_id, job_id, commission_pct, avg(salary)
from employees
where commission_pct is not null
GROUP BY department_id, job_id, commission_pct
order by 1;

select department_id, avg(salary)
from employees
group by department_id
having avg(salary)> 10000;

select job_id, sum(salary) Payroll
from employees
where job_id not like '%REP%'
group by job_id
having sum(salary) > 14000
order by sum(salary);

select job_id, sum(salary) Payroll
from employees
where job_id not like '%PROG%'
group by job_id
having sum(salary) > 14000
order by sum(salary);

select * from employees;

-- display year in which more than 10 employees joined.--
select to_char(hire_date,'YYYY')
from employees
GROUP by to_char(hire_date, 'YYYY')
HAVING count(employee_id) > 10;

--display department in which more than 5 employees have commission_pct--
select department_id
from employees
where commission_pct is not null
group by department_id
having count(commission_pct) > 5;

--display job_id for jobs with avarage salary more than 10000.--
select job_id, avg(salary)
from employees
group by job_id
having avg(salary) > 10000;