--create a table for each 6 csv files
--departments; department_emp; dept_manager
--employees; salaries; titles
--be sure to do them in correct order for foreign keys
DROP TABLE employees;
DROP TABLE department;
DROP TABLE dept_manager;
DROP TABLE dept_emp;
DROP TABLE titles;
DROP TABLE salaries;

--first table, employees
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);
SELECT*FROM employees;

--next table, table 2, departments
CREATE TABLE department (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no));
SELECT*FROM department;	

--next table, table 3, managers
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES department(dept_no));
SELECT*FROM dept_manager;

--next table, table 4, dept_emp
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES department(dept_no),
	PRIMARY KEY (emp_no, dept_no));
SELECT*FROM dept_emp;

--next table, table 5, titles
DROP TABLE titles;
CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
SELECT*FROM titles;

--next table, table 6, salaries
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no));
SELECT*FROM salaries;

SELECT*FROM employees;
SELECT*FROM department;
SELECT*FROM dept_manager;
SELECT*FROM dept_emp;
SELECT*FROM titles;
SELECT*FROM salaries;
