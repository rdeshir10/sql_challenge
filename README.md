# sql_challenge

I have completed this challenge assignment by myself. 

Schemata: 1) The code for the creation of the tables starts with a drop if exists function.
          2) Table creation should be done in the following order as Keys are interdependent. 
              Titles, Employees, Department, The rest can be done in any order. 

Queries: 

        Q1- List the employee number, last name, first name, sex, and salary of each employee
        -- This query used 2 tables (employees and Salary), An inner join was used to provide common elements in the dataset.

        Q2- List the first name, last name, and hire date for the employees who were hired in 1986 
        -- This question was answered in 2 different ways. First method was using the TO_DATE Function to convert VARCHAR into Dates.
           The second method was using the LIKE function with the dates as VARCHAR. 
           The first method has a significantly longer run time than the second. 

        Q3- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
        -- This query requires data from 3 tables , 2 inner joins were performed to connect tables Employees, Departments and dept_manager. 

        Q4- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
        -- This query requires data from 3 tables , 2 inner joins were performed to connect tables Employees, Departments and dept_emp. 

        Q5- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
        -- This query uses one table and 2 conditions in the where clause. 

        Q6- List each employee in the Sales department, including their employee number, last name, and first name.
        -- This Query uses 2 inner joins to connect 3 tables (employees, dept_emp and departments) and uses one condition in the where clause.

        Q7- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
        -- This Query uses 2 inner joins to connect 3 tables (employees, dept_emp and departments) and uses two conditions in the where clause.

        Q8- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
        -- This Query uses the COUNT and GROUP BY functions along with the ORDER BY function to retrieve and sort data. 
