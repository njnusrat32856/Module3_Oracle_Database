select first_name, last_name, department_id , department_name
from employees 
NATURAL JOIN departments;

select * from job_history;

select department_id, department_name, location_id, city
from departments
NATURAL JOIN locations
where department_id IN(20, 50);

select first_name, department_name, job_title
from employees
NATURAL JOIN departments
NATURAL JOIN jobs;

select employee_id, first_name, job_id, job_title
from employees 
NATURAL JOIN jobs;

select first_name, department_name, job_title, city, country_name, region_name
from employees
NATURAL JOIN departments
NATURAL JOIN jobs
NATURAL JOIN locations
NATURAL JOIN regions
NATURAL JOIN countries;

select first_name, region_name
from employees
NATURAL JOIN departments
NATURAL JOIN jobs
NATURAL JOIN locations
NATURAL JOIN regions
NATURAL JOIN countries;

select first_name, country_name
from employees
NATURAL JOIN departments
NATURAL JOIN jobs
NATURAL JOIN locations
NATURAL JOIN countries;

select employee_id, last_name, location_id, department_id
from employees
JOIN departments USING (department_id)
where department_id IN(20, 30);

select city, department_name
from locations
join departments USING (location_id)
where location_id = 1400;

select first_name, min_salary, department_name
from employees
NATURAL JOIN departments
NATURAL JOIN jobs;

select employee_id, last_name, location_id, department_id
from employees
JOIN departments USING (department_id);

select employee_id, job_id, last_name, location_id
from employees
JOIN departments USING (department_id);

select l.city, d.department_name
from locations l
join departments d using (location_id)
where location_id = 1400;

select first_name, d.department_name, d.manager_id
from employees e
join departments d using (department_id);

select last_name, job_id, department_name
from departments
join employees USING (department_id)
join job_history USING(job_id);