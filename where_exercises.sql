USE employees;

SELECT *
FROM employees

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows
Where first_name IN ('Irena', 'Vidya', 'Maya')
# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
AND gender = 'm'
# ORDER BY first_name, last_name;
ORDER BY last_name,first_name;

# Find all employees whose last name starts with 'E' — 7,330 rows.
# WHERE last_name LIKE 'e%'
#Find all employees whose last name starts or ends with 'E' — 30,723 rows.
# OR last_name LIKE '%e';
# Find all employees whose last name starts and ends with 'E' — 899 rows.
# WHERE last_name LIKE 'e%e'

# Find all employees hired in the 90s — 135,214 rows
# WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
# Find all employees hired in the 90s and born on Christmas — 362 rows.
# AND birth_date LIKE '%-12-25';

# Find all employees born on Christmas — 842 rows
# WHERE birth_date LIKE '%-12-25'

# Find all employees with a 'q' in their last name — 1,873 rows.
WHERE last_name LIKE '%q%'
 AND last_name NOT LIKE '%qu%';
