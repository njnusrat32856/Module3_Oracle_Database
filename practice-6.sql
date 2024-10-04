--Chapter-6
--Task-4
select round(max(salary)) as Maximum, round(min(salary)) as Minimum, round(sum(salary)) as Sum,
round(avg(salary)) as Average
from employees;

--Task-5
select job_id, round(max(salary)) "Maximum", round(min(salary)) "Minimum", round(sum(salary)) "Sum",
round(avg(salary)) "Average"
from employees
group by job_id;

--Task-6
select job_id, count(*)
from employees
group by job_id;

--Task-7
select count(distinct(manager_id)) "Number of Managers"
from employees;

--Task-8
select round(max(salary))- round(min(salary)) as difference
from employees;

--Task-9
select manager_id, min(salary)
from employees
where manager_id is not null
group by manager_id
having min(salary)> 6000
order by 2 desc;

--Task-10
select count(*)as total,
sum(case when to_char(hire_date,'YYYY')='2005' then 1 else 0 end) as "2005",
sum(case when to_char(hire_date,'YYYY')='2006' then 1 else 0 end) as "2006",
sum(case when to_char(hire_date,'YYYY')='2007' then 1 else 0 end) as "2007",
sum(case when to_char(hire_date,'YYYY')='2008' then 1 else 0 end) as "2008"
from employees;

--Task-11
select job_id "Job",
sum(case when department_id=20 then salary else null end) as "Dept 20",
sum(case when department_id=50 then salary else null end) as "Dept 50",
sum(case when department_id=80 then salary else null end) as "Dept 80",
sum(case when department_id=90 then salary else null end) as "Dept 90",
SUM (salary) as "Total"
from employees
GROUP BY job_id;