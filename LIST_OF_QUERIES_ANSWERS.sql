--LIST EMPLOYEE NUMBER,LAST NAME,FIRST NAME,SEX,SALARY 
--EACH EMPLOYEE---QUERY1

SELECT employees.emp_no, employees.last_name,
employees.first_name,employees.sex ,salaries.salary
from employees ,salaries WHERE 
	employees.emp_no = salaries.emp_no ;
	
---query2
--List the first name, last name, and hire date for
--the employees who were hired in 1986.
SELECT first_name,last_name,hire_date FROM employees
WHERE extract(year from hire_date) = 1986;
	
----query3
--List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.

SELECT d.dept_no,de.dept_name,e.emp_no,e.first_name,e.last_name
FROM employees as e
INNER JOIN dept_manager as d ON
e.emp_no = d.emp_no
INNER JOIN departments as de ON
de.dept_no = d.dept_no;

--query4
--List the department number for each employee 
--along with that employee’s employee number, last name, first name, and department name.
SELECT a.emp_no,a.last_name,a.first_name , b.dept_no,c.dept_name
from employees a 
INNER JOIN dept_emp as b ON
a.emp_no = b.emp_no 
INNER JOIN departments as c ON
b.dept_no = c.dept_no;

--QUERY5
--List first name, last name, and sex of each
--employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name,last_name,sex 
from employees
where first_name = 'Hercules' AND
last_name like 'B%';

--QUERY6
--List each employee in the Sales department, 
--including their employee number, last name, and first name.
select a.emp_no,a.last_name,a.first_name,
c.dept_name 
from employees a
INNER JOIN dept_emp as b ON
 a.emp_no = b.emp_no
INNER JOIN departments as c ON 
 c.dept_name = 'Sales';

--Query7
--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select a.emp_no,a.last_name,a.first_name,
c.dept_name 
from employees a
JOIN dept_emp as b ON
 b.emp_no = a.emp_no
JOIN departments as c ON 
c.dept_no=b.dept_no
where
 c.dept_name = 'Sales' OR c.dept_name = 'Development';


--QUERY8
--List the frequency counts, in descending order,
--of all the employee last names (that is, how many employees share each last name).

SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;



