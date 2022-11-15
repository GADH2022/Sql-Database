CREATE TABLE salaries
(
emp_no int ,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
salary int
);


SELECT * from salaries;