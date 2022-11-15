CREATE TABLE dept_emp
(
emp_no INT NOT NULL, 
FOREIGN key(emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR NOT NULL,
FOREIGN key(dept_no)REFERENCES departments(dept_no)
);

SELECT * from dept_emp;