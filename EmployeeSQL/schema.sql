DROP TABLE EMPLOYEES
DROP TABLE TITLES
DROP TABLE DEPT_MANAGER
DROP TABLE DEPT_EMP
DROP TABLE SALARIES
DROP TABLE DEPARTMENTS


CREATE TABLE titles(
	title_id VARCHAR(30),
	title VARCHAR(30),
	PRIMARY KEY (title_id)
)
SELECT * FROM titles;
--titles imported

CREATE TABLE departments(
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
)
SELECT * FROM departments;
--departments imported

CREATE TABLE EMPLOYEES(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30)NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	PRIMARY KEY (emp_no)
)
SELECT * FROM EMPLOYEES;
-- employees imported

CREATE TABLE dept_manager(
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no, dept_no)
)
SELECT * FROM dept_manager;
-- dept_manager imported

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no, salary)
)
SELECT * FROM salaries;
-- salaries imported

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)	
)
SELECT * FROM dept_emp;
--dept_emp imported


