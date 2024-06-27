DROP TABLE IF EXISTS employees;


DROP TABLE IF EXISTS departments;


DROP TABLE IF EXISTS dept_emp;


DROP TABLE IF EXISTS dept_manager;


DROP TABLE IF EXISTS salaries;


DROP TABLE IF EXISTS titles;


CREATE TABLE employees (emp_no INT NOT NULL PRIMARY KEY,
																									emp_title_id VARCHAR(10),
																									birth_date VARCHAR(15),
																									first_name VARCHAR(30),
																									last_name VARCHAR(30),
																									sex VARCHAR(10),
																									hire_date VARCHAR(15),
																								FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));


CREATE TABLE departments (dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
																											dept_name VARCHAR(30));


CREATE TABLE dept_emp (emp_no INT, dept_no VARCHAR(10),
																							FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
																							FOREIGN KEY (dept_no) REFERENCES departments(dept_no));


CREATE TABLE dept_manager(dept_no VARCHAR(10),
																											emp_no INT,
																										FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
																										FOREIGN KEY (emp_no) REFERENCES employees(emp_no));


CREATE TABLE salaries (emp_no INT, salary INT,
																							FOREIGN KEY (emp_no) REFERENCES employees(emp_no));


CREATE TABLE titles (title_id VARCHAR(10) PRIMARY KEY,
																						title VARCHAR(30));

