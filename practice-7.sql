select * from locations;
select * from countries;
select * from employees;


--Chapter-7
--Task-1
select location_id, street_address, city, state_province, country_name
from locations
NATURAL JOIN countries;

--Task-2
select em.last_name, em.department_id, d.department_name
from employees em
join departments d on em.department_id= d.department_id;

--Task-3
select e.last_name, e.job_id, e.department_id, d.department_name
from employees e
join departments d on d.department_id = e.department_id
join locations l on l.location_id = d.location_id
where l.city ='Toronto';

--Task-4
select e.last_name "Employees", e.employee_id "Emp#", m.last_name "Manager", m.employee_id "Mgr#"
from employees e
join employees m on e.manager_id = m.employee_id;

--Task-5
select e.last_name "Employees", e.employee_id "Emp#", m.last_name "Manager", m.employee_id "Mgr#"
from employees e
left outer join employees m on e.manager_id = m.employee_id
order by 2;

--Task-6
select e.department_id, e.last_name, m.last_name
from employees e
join employees m on m.department_id=e.department_id
where e.employee_id <> m.employee_id
order by 1;

--Task-7 a
describe job_grades;
--Task-7 b
select e.last_name, e.job_id, d.department_name, e.salary, j.grade
from employees e
join departments d on e.department_id = d.department_id
join job_grades j on e.salary between j.lowest_sal and j.highest_sal
order by last_name;

--Task-8
select last_name, hire_date
from employees
where hire_date > 
 (select hire_date 
 from employees 
 where last_name='Davies');
 
--Task-9
select e.last_name, e.hire_date, m.last_name, m.hire_date
from employees e
join employees m on e.manager_id= m.employee_id
where e.hire_date < m.hire_date;