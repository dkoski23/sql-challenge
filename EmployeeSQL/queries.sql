--#1. List the following details of each employee:
--employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, 
		employees.last_name, 
		employees.first_name,
		employees.sex,
		salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no = salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,
		last_name,
		hire_date
FROM EMPLOYEES
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--#3. List the manager of each department with the following information:
--department number, department name, the manager’s employee number, last name, first name.
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

--4 List the department of each employee with the following information:
--employee number, last name, first name, and department name.
SELECT employees.last_name,
	employees.first_name,
	dept_emp.emp_no,
	departments.dept_name
FROM departments
INNER JOIN dept_emp ON
dept_emp.dept_no=departments.dept_no
INNER JOIN employees ON
dept_emp.emp_no=employees.emp_no; 

--#5 List first name, last name, and sex for employees whose first name
--#is “Hercules” and last names begin with “B.”
SELECT first_name, last_name, sex
FROM EMPLOYEES
WHERE first_name LIKE '%Hercules%' and last_name LIKE 'B%';

--#6 List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no,
		employees.last_name,
		employees.first_name,
		departments.dept_name
FROM departments
INNER JOIN dept_emp ON
dept_emp.dept_no=departments.dept_no
INNER JOIN employees ON
dept_emp.emp_no=employees.emp_no
WHERE departments.dept_name LIKE '%Sales%'

--#7 List all employees in the Sales and Development departments,
--including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no,
		employees.last_name,
		employees.first_name,
		departments.dept_name
FROM departments
INNER JOIN dept_emp ON
dept_emp.dept_no=departments.dept_no
INNER JOIN employees ON
dept_emp.emp_no=employees.emp_no
WHERE departments.dept_name LIKE '%Sales%' 
OR departments.dept_name LIKE '%Development%'

--#8 In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM EMPLOYEES
GROUP BY last_name
ORDER BY COUNT(last_name) DESC