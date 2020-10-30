USE employees;
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de ON de.emp_no = e.emp_no
         JOIN departments as d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT de.* FROM employees AS e
                     JOIN dept_emp de on e.emp_no = de.emp_no
where e.emp_no = 10010;

# Shows each department along with the name of the current manager for that department.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
         JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
         JOIN departments as d ON dm.dept_no = d.dept_no
WHERE DM.to_date = '9999-01-01';

# Find the name of all departments currently managed by women.
SELECT /*Todo:DISTINCT(1 from each department)*/ d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager_full_name
FROM employees AS e
         JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
         JOIN departments as d ON dm.dept_no = d.dept_no
WHERE DM.to_date = '9999-01-01'
  AND e.gender = 'f';


# Find the current titles of employees currently working in the Customer Service department.
SELECT * FROM departments WHERE dept_name = 'Customer Service';
SELECT t.title AS Title, COUNT(t.emp_no) AS Count
FROM titles AS t
    JOIN dept_emp AS de ON t.emp_no = de.emp_no
    JOIN departments AS d ON de.dept_no = d.dept_no
# WHERE de.dept_no = 'd009'
    WHERE d.dept_name = 'Customer Service'
    AND DE.to_date = '9999-01-01'
    AND t.to_date = '9999-01-01'
GROUP BY t.title;
/*Todo: Review and Redo with different departments*/




# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department',  CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', CONCAT('$', s.salary) AS 'Salary'
FROM dept_manager AS dm
    JOIN employees AS e ON dm.emp_no = e.emp_no
    JOIN departments AS d ON dm.dept_no = d.dept_no
    /*Todo: Lists multiple salaries over the years by employees*/
    JOIN salaries s on s.emp_no = dm.emp_no
        WHERE dm.to_date = '9999-01-01'
        AND s.to_date = '9999-01-01';


# SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
# FROM employees AS e
#          JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
#          JOIN departments as d ON dm.dept_no = d.dept_no
# WHERE DM.to_date = '9999-01-01';