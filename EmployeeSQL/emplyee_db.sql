CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

SELECT * FROM departments;

CREATE TABLE department_emp(
	emp_no INT FOREIGN KEY,
	dept_no VARCHAR FOREIGN KEY
);

SELECT * FROM department_emp;

CREATE TABLE department_manager(
	dept_no VARCHAR FOREIGN KEY,
	emp_no INT FOREIGN KEY
);

SELECT * FROM department_manager;

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR FOREIGN KEY,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

SELECT * FROM employees;

CREATE TABLE salaries(
	emp_no INT FOREIGN KEY,
	salary INT 
);

SELECT * FROM salaries;

CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);

SELECT * FROM titles;


SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '12/31/1985' AND '1/1/1987';


SELECT departments.dept_no, departments.dept_name, department_manager.emp_no, employees.last_name, employees.first_name
FROM departments
INNER JOIN department_manager ON departments.dept_no=department_manager.dept_no
INNER JOIN employees ON department_manager.emp_no=employees.emp_no;


SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN department_emp ON employees.emp_no=department_emp.emp_no
INNER JOIN departments ON department_emp.dept_no=departments.dept_no;


SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN department_emp ON employees.emp_no=department_emp.emp_no
INNER JOIN departments ON department_emp.dept_no=departments.dept_no
WHERE dept_name = 'Sales';

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN department_emp ON employees.emp_no=department_emp.emp_no
INNER JOIN departments ON department_emp.dept_no=departments.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

SELECT last_name, COUNT(last_name) AS "name frequency"
FROM employees
GROUP BY last_name
ORDER BY "name frequency" DESC;




