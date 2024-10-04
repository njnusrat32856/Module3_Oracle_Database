select * from job_grades;

--Task-7 a
describe job_grades;

--Task-7 b
select e.last_name, e.job_id, d.department_name, e.salary, j.grade
from employees e
join departments d on e.department_id = d.department_id
join job_grades j on e.salary between j.lowest_sal and j.highest_sal;

select e.last_name, e.job_id, d.department_name, e.salary, j.grade
from employees e
NATURAL join departments d 
join job_grades j on e.salary between j.lowest_sal and j.highest_sal
order by last_name;
--Task-9 but wrong
select e.last_name, e.hire_date, m.last_name, m.hire_date
from employees e
join employees m on m.manager_id= e.employee_id
where e.hire_date < m.hire_date;