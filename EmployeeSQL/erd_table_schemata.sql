Departments
-
dept_no VARCHAR(255) PK
dept_name VARCHAR(255)

Department_Emp
-
emp_no INT FK - Employees.emp_no
dept_no VARCHAR(255) FK - Departments.dept_no

Department_Manager
-
dept_no VARCHAR(255) FK - Departments.dept_no
emp_no INT FK - Employees.emp_no

Employees
-
emp_no INT PK
emp_title_id VARCHAR(255) FK - Titles.title_id
birth_date DATE
first_name VARCHAR(255)
last_name VARCHAR(255)
sex VARHCAR(255)
hire_date DATE

Salaries
-
emp_no INT FK - Employees.emp_no
salary INT FK

Titles
-

title_id VARCHAR PK 
title VARCHAR(255)

