DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_tittle_id VARCHAR NOT NULL,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR
)

DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR
)

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR
)

DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT
)

DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	emp_no INT,
	salary INT
)

DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
)







