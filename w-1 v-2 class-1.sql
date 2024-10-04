desc departments;

INSERT INTO departments (department_id,department_name,manager_id,location_id)
values (81,'PR',null,2500);

INSERT INTO departments (department_id,department_name,manager_id,location_id)
values (82,'PR',100,2400);

INSERT INTO departments (department_id,department_name,manager_id,location_id)
values (83,'PR',null,2400);

rollback;

commit;

SELECT * FROM departments
order by department_id;