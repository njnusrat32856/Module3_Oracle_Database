select * from sales_reps;


--w-2 v-1
--Chapter-3

create SEQUENCE sales_reps_id
INCREMENT BY 1
START WITH 100
MAXVALUE 99999
nocache
nocycle;

select sales_reps_id.nextval
from dual;

INSERT INTO sales_reps VALUES (sales_reps_id.nextval, 'Masaba', 3000, 0.5);


CREATE SEQUENCE student_id
INCREMENT BY 1
START WITH 1
MAXVALUE 99999
NOCACHE
NOCYCLE;

CREATE table student(
id number(5) DEFAULT student_id.nextval constraint sys_student_id primary KEY,
name VARCHAR2(30) NOT NULL,
email VARCHAR2(50) NOT NULL CONSTRAINT student_email_unique UNIQUE
);

insert into student
VALUES (DEFAULT, 'Nusrat', 'nusrat@gmail.com');

select * from user_sequences;
select * from all_sequences;

SELECT * FROM student;
ROLLBACK;
COMMIT;