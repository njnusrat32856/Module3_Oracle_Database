select * from employees;

select last_name, salary, 12*salary+100
from employees;

select last_name, job_id, salary, commission_pct
from employees;

select last_name, salary, nvl(commission_pct, 0),
(salary*12) + (salary*12*nvl(commission_pct, 0)) AN_SAL
from employees;

select last_name, salary, commission_pct,
nvl2(commission_pct,'sal+com', 'sal') income
from employees
where department_id in (50, 80);

select first_name, length(first_name) "expr1", last_name, length(last_name) "expr2",
nullif(length(first_name), length(last_name)) result
from employees;

select last_name, salary, commission_pct,
coalesce((salary+(commission_pct*salary)), salary+2000) "New salary"
from employees;

select first_name, salary, nvl(commission_pct, 0),
salary + (salary*12*commission_pct) An_Sal
from employees;