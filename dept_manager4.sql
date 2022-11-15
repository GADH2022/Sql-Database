CREATE TABLE dept_manager
(
dept_no varchar,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no int,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


SELECT * from dept_manager;