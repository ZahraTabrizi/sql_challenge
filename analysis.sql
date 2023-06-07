SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary 
FROM employees as e
LEFT JOIN salaries as s
on (e.emp_no = s.emp_no)
ORDER BY e.emp_no;

SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE EXTRACT(YEAR FROM hire_date) = '1986'
ORDER BY e.hire_date;

SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        e.last_name,
        e.first_name
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN employees AS e
        ON (dm.emp_no = e.emp_no);


SELECT first_name, last_name, sex 
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

SELECT last_name, COUNT(*) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
