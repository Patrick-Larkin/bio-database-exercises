USE employees;

SELECT NOW();
SELECT CURDATE();
SELECT CURTIME();

SELECT AVG(salary) FROM salaries WHERE to_date > NOW();
# Max, Min, Avg, Sum -- Aggregate functions

SELECT COUNT(last_name), last_name FROM employees GROUP BY last_name;

SELECT COUNT(*), last_name FROM employees WHERE hire_date = '1990-12-25' GROUP BY last_name;
SELECT COUNT(*), first_name FROM employees WHERE hire_date = '1990-12-25' GROUP BY first_name;

SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC LIMIT 10;

SELECT DISTINCT first_name, last_name FROM employees LIMIT 50;


# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
SELECT DISTINCT t.title FROM titles AS t

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
SELECT DISTINCT first_name, last_name
    FROM employees
    WHERE last_name LIKE 'e%e';

# Find the unique last names with a 'q' but not 'qu'. Your results should be:
SELECT DISTINCT last_name
    FROM employees
    WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%';


SELECT first_name, COUNT(first_name)
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name
ORDER BY COUNT(*) DESC;

SELECT last_name, COUNT(first_name)
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name
ORDER BY COUNT(*) DESC;


SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*) DESC;

SELECT COUNT(gender), gender
FROM employees
Where first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY COUNT(*) DESC;


