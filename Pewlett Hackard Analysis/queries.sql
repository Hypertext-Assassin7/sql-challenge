-- List the employee number, last name, first name, sex, and salary of each employee 
SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;


-- List the first name, last name, and hire date for the employees who were hired in 1986 
SELECT first_name, last_name, hire_date 
FROM employees 
WHERE hire_date LIKE '%1986';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name 
SELECT D.dept_no, dept_name, E.emp_no, last_name, first_name
FROM dept_manager D
JOIN employees E
ON D.emp_no = E.emp_no 
JOIN departments D2
ON D.dept_no = D2.dept_no;


-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT D.dept_no, E.emp_no, last_name, first_name, dept_name
FROM employees E
LEFT JOIN dept_emp D
ON D.emp_no = E.emp_no 
LEFT JOIN departments D2
ON D.dept_no = D2.dept_no;


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name
SELECT E.emp_no, last_name, first_name
FROM employees E 
JOIN dept_emp D
ON D.emp_no = E.emp_no 
JOIN departments D2
ON D.dept_no = D2.dept_no
WHERE dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT E.emp_no, last_name, first_name, dept_name
FROM employees E 
JOIN dept_emp D
ON D.emp_no = E.emp_no 
JOIN departments D2
ON D.dept_no = D2.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT DISTINCT last_name, count(emp_no)
FROM employees
GROUP BY last_name
ORDER BY count(emp_no) DESC;

