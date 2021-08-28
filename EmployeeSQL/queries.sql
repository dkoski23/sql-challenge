SELECT employees.emp_no, 
		employees.last_name, 
		employees.first_name,
		employees.sex,
		salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no = salaries.emp_no;

SELECT first_name,
		last_name,
		hire_date
FROM EMPLOYEES
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT employees.last_name,
	employees.first_name,
	dept_manager.emp_no,
	dept_manager.dept_no,
	departments.dept_name
FROM departments
INNER JOIN dept_manager ON
dept_manager.dept_no=departments.dept_no
INNER JOIN employees ON
dept_manager.emp_no=employees.emp_no;

SELECT employees.last_name,
	employees.first_name,
	dept_emp.emp_no,
	departments.dept_name
FROM departments
INNER JOIN dept_emp ON
dept_emp.dept_no=departments.dept_no
INNER JOIN employees ON
dept_emp.emp_no=employees.emp_no, 

--#5 List first name, last name, and sex for employees whose first name
--#is “Hercules” and last names begin with “B.”
SELECT first_name, last_name, sex
FROM EMPLOYEES
WHERE first_name LIKE 'Hercules%' and last_name LIKE 'B%'