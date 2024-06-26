select * from employees;
select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from salaries;
select * from titles;

-- Q1 List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no AS "Employee Number", 
	   e.last_name AS "Last Name",
	   e.first_name AS "First Name",
	   e.sex,
	   s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON e.emp_no = s.emp_no

-- Q2 List the first name, last name, and hire date for the employees who were hired in 1986

SELECT first_name AS "First Name",
	   last_name AS "Last Name",
	   hire_date AS "Hire Date"
FROM employees
Where hire_date like '%1986';

-- Q3 List the manager of each department along with their department number, department name, employee number, last name, and first name 

SELECT d.dept_name 
FROM departments as d;

SELECT dm.dept_no AS "Department Number",
	   e.emp_no AS "Employee Number",
	   e.last_name AS "Last Name",
	   e.first_name AS "First Name"
FROM employees as e
INNER JOIN dept_manager as dm 
ON e.emp_no = dm.emp_no
INNER JOIN departments as d
ON dm.dept_no = d.dept_no
WHERE d.dept_name IN (SELECT d.dept_name 
					  FROM departments AS d
					 );
					 
-- Q4



