SELECT e.emp_no, last_name, first_name, sex, salary FROM employees as e
INNER JOIN salaries AS s ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name FROM dept_manager AS m
INNER JOIN departments AS d ON m.dept_no = d.dept_no
INNER JOIN employees AS e ON m.emp_no = e.emp_no;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM dept_employees AS de
INNER JOIN employees AS e ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no;

SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM dept_employees AS de
INNER JOIN employees AS e ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM dept_employees AS de
INNER JOIN employees AS e ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

SELECT last_name, count(last_name) FROM employees
GROUP BY last_name
ORDER BY last_name DESC;


