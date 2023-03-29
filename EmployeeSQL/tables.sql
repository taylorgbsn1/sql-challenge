--code to drop existing tables
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS salaries;

-- creating titles table
CREATE TABLE titles(
	title_id VARCHAR(30) PRIMARY KEY,
	titles VARCHAR(30)
);

--query all columns from titles table
SELECT * FROM titles;

-- create employees table
CREATE TABLE Employees(
    emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(30),
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(30),
	hire_date DATE
);

--query all items from employees table
SELECT * FROM Employees;

-- create departments table
CREATE TABLE Departments(
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(30)
);

--query all items from departments table
SELECT * FROM Departments;

--create dept_manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR(30),
	emp_no INT,
	PRIMARY KEY(dept_no, emp_no)
);

--all items from dept_manager table
SELECT * FROM dept_manager;

--create dept_emp table
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(30),
	PRIMARY KEY(emp_no, dept_no)
);

--all items from deptemp table
SELECT * FROM dept_emp;

--create salaries table
CREATE TABLE Salaries(
	emp_no INT PRIMARY KEY,
	salary INT
);

--all items from salaries table
SELECT * FROM salaries;