-- Data Analysis
SELECT emp_no, last_name,first_name, sex FROM employees;
SELECT * FROM employees

-- 1.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex,
salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

-- 2.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

-- 3.
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no,
employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no;

-- 4.
SELECT employees.emp_no, employees.last_name, employees.first_name,
departments.dept_name
FROM dept_emp
INNER JOIN departments on departments.dept_no = dept_emp.dept_no
INNER JOIN employees on employees.emp_no = dept_emp.emp_no;

-- 5.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6.
SELECT employees.emp_no, employees.last_name, employees.first_name,
departments.dept_name
FROM dept_emp
INNER JOIN departments on departments.dept_no = dept_emp.dept_no
INNER JOIN employees on employees.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales';

-- 7.
SELECT employees.emp_no, employees.last_name, employees.first_name,
departments.dept_name
FROM dept_emp
INNER JOIN departments on departments.dept_no = dept_emp.dept_no
INNER JOIN employees on employees.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- 8.
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY "count" desc;