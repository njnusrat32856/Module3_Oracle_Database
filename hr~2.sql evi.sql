--Question 1 Ans
select first_name, last_name, salary
from employees
where first_name like 'A%';


--Question 2 Ans
select first_name, salary, salary+(salary*(30/100)) Bonus
from employees;


--Question 3 Ans
select first_name ||' '|| last_name "Employees Name", salary
from employees
where salary > 2500;


--Question 4 Ans
select first_name ||' '|| last_name "Employees Name", salary, salary*12 "Annual Salary"
from employees
order by 3;