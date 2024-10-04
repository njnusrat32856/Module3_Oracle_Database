select first_name, last_name, salary
from employees e
JOIN departments d ON e.department_id=d.department_id
join locations l ON d.location_id=l.location_id
where l.city= 'Oxford';

select * from jobs;

select job_title, department_name, last_name, hire_date
FROM employees e
join jobs j on e.job_id= j.job_id
join departments d on e.department_id = d.department_id
where to_char(hire_date, 'fmYYYY') between 2000 and 2005;

select job_title, department_name, last_name, hire_date
FROM employees e
join jobs j on e.job_id= j.job_id
join departments d on e.department_id = d.department_id
where e.hire_date between '01-Jan-2000' and '31-Dec-2005';

select job_title, department_name, last_name, start_date
FROM employees e
join jobs j 
on e.job_id= j.job_id
join departments d 
on e.department_id = d.department_id
join job_history h 
on e.employee_id = h.employee_id
where to_char(h.start_date, 'fmYYYY') between 2000 and 2005
order by 4;

select e.last_name, e.department_id, d.department_name
from employees e join departments d
on (e.department_id= d.department_id);

select e.last_name, e.department_id, d.department_name
from employees e right outer join departments d
on (e.department_id= d.department_id);

select e.last_name, e.department_id, d.department_name
from employees e left outer join departments d
on (e.department_id= d.department_id);

select e.last_name, e.department_id, d.department_name
from employees e full outer join departments d
on (e.department_id= d.department_id);