# Sql_challenge

DATA ENGINEERING:

There were 6 total tables included in the CSV dataset:
•	departments
•	dept_emp
•	dept_manager
•	employees
•	salaries
•	titles

It was found that there are really two "main" tables: departments and employees. The other tables relate to these two tables. As such, departments has the dept_no  primary key while employees holds the emp_no  primary key and the other four tables have at least one of those two fields as foreign keys.

Data Modeling:

I used QuickDBD tool to develop ERD diagrams ,Entity-Relationship diagrrams to show relation-ship between tables.

Relationships:

•	departments 1-to-1 to dept_emp: employees can have only one department number (for example, switching departments).
•	departments 1- to -many dept_manager: Each department can have multiple managers assigned. 
•	employees many-to-1 to titles: Multiple employees can have same title. One title can have many employees assigned with the same title. Therefore, a many-to-1 relationship.
•	employees many -to-1 salaries:  One salary level can have many employees as multiple employees can make the same salary. Therefore, a many-to-1 relationship.
•	employees many-to-1 to dept_emp: a department can contain multiple employees.
•	employees many-to-1 to dept_manager: a manager can have many employees under his/her team.

Data Analysis:  I did Queries for the following from the given csv files.
First,I created tables in postgresql,Then did queries for each of the questions.

List the employee number, last name, first name, sex, and salary of each employee.

List the first name, last name, and hire date for the employees who were hired in 1986.

List the manager of each department along with their department number, department name, employee number, last name, and first name.

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

List each employee in the Sales department, including their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
