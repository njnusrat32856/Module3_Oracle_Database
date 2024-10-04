--Evidence 1
--1. Create a table and name using your ID preceded by emp las emp106588, which have 5 fields as eid, ename, salary, hire date and address with
--appropriate data types and create primary key on eid.
CREATE TABLE emp1281608 (
id NUMBER(6) CONSTRAINT sys_emp1281608_id PRIMARY KEY,
name varchar2(30) not NULL,
salary number(8,2),
hire_date date not NULL,
address varchar2(50)
);


--2. Add two new columns named 'department_id'dept_name ALTER Table Command.
ALTER TABLE emp1281608
add(department_id number(4),
dept_name VARCHAR2(30));


--3. Insert values to the table.
insert into emp1281521
values(3, 'Shamima Nasrin', 25000, '01-JAN-2008', 'Dhanmondi, Dhaka', 50, 'W_DEV');


--4. Create a view that which contains ename, dept_name and salary in department 80.
create VIEW emp1281608
as
select name, dept_name, salary
from employees
where department_id= '80';



--5. Create a sequence?
CREATE SEQUENCE emp1281608
INCREMENT BY 1
START WITH 1
MAXVALUE 9999999
NOCACHE
NOCYCLE;


--6. Give an appropriate example of insert data from subqueries.
insert into emp1281521(employee_id, Employee_name, salary, department_id, department_name)
select e.employee_id, e.first_name, e.salary, d.department_id, d.department_name
from employees e
join departments d on d.department_id = e.department_id
where d.department_id = 80;




shabab bhai
-- Question 1-Create a table and name using your ID preceded by emp las emp106588, which have 5 fields as eid, ename, salary, hire date and address with
--appropriate data types and create primary key on eid.
create table emp1281539(
eid number(9) primary key,
ename varchar2(60) not null,
salary number(9),
hire_date date,
address varchar2(200)
);


-- Question 2-Add two new columns named 'department_id'dept_name ALTER Table Command.
alter table emp1281539
add (department_id number(9), dept_name varchar2(70));


-- Question 3-Insert values to the table.
insert into emp1281539
values(1, 'Shabab Ahmed', 20000, '01-JAN-2020', 'Kallyanpur, Dhaka', 100, 'IT');
insert into emp1281539
values(2, 'Skip Khan', 20000, '11-MAR-2020', 'Mipur, Dhaka', 102, 'MKT');
insert into emp1281539
values(3, 'Samin Ahmed', 20000, '21-OCT-2020', 'Motijheel, Dhaka', 100, 'IT');
insert into emp1281539
values(4, 'Sameer Hasan', 35000, '21-DEC-2020', 'Savar, Dhaka', 80, 'SALES');
insert into emp1281539
values(5, 'Ahamad Ullah', 40000, '21-JUN-2020', 'Kakrail, Dhaka', 80, 'SALES');

-- Question 4-Create a view that which contains ename, dept_name and salary in department 80.
create view emp_dept_80 as
select ename, dept_name, salary
from emp1281539
where department_id = 80;

-- Question 5-Create a sequence?
create sequence generic_id_seq
start with 1
increment by 1
nocache
nocycle;

-- Question 6-Give an appropriate example of insert data from subqueries.
insert into emp1281539(eid, ename, salary, department_id, dept_name)
select e.employee_id, e.first_name, e.salary, d.department_id, d.department_name
from employees e
join departments d on d.department_id = e.department_id
where d.department_id = 80;




--Evidence 2
--1. create a table and name using your id preceded by emp, which have 5 fields as eid, ename, salary, hire date and address
--with appropriate data types and create primary key on eid.
CREATE TABLE emp1281608 (
eid NUMBER(10),
ename varchar2(30) not null,
salary number(8,2),
hire_date date not null,
address VARCHAR2(50)
);

--2. displays the department numbers and average salaries for those departments with a maximum salary that is grater than 12000.
SELECT department_id ,AVG(salary)
from employees
WHERE MAX(salary) > 12000
GROUP by department_id;

--3. display the name whose name start from 'S'.
select last_name
from employees
where last_name like 'S%';

--4.display the average salary of employees of department sales?
select AVG(employees.salary) 
from employees
join departments on employees.department_id = departments.department_id
where departments.department_name like 'S%';



--5.display the name of employees joining in company in ascending order.
select first_name, last_name
from employees
ORDER BY hire_date;