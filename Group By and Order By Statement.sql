-- Group By in MySQL: Used to aggregate data based on one or more specified columns.
SELECT
	gender, avg(AGE)
FROM
	parks_and_recreation.employee_demographics
GROUP BY
	gender;
-- Calculates the average age of employess grouped by gender.
-- gender: the column which am grouping the data to show results for each gender.
-- AVG (age) Calculates average age for each gender. 
-- GROUP BY gender: groups data by unique values in gender column. 
    
SELECT
	occupation
FROM
	parks_and_recreation.employee_salary
GROUP BY
	occupation;
-- Groups all rows by occupation and returns a unique occupation without performing any aggreagated calculations 
    
SELECT
	occupation, salary
FROM
	parks_and_recreation.employee_salary
GROUP BY
	occupation, salary;
-- Returns unique combination of occupation and salary 
-- If multiple employees have same occupation and exact salary, they'll be grouped together in a single row
    
SELECT
	gender, avg(age), max(age), min(age), count(age)
FROM
	parks_and_recreation.employee_demographics
GROUP BY
	gender;
-- Calculates various age realted statistics for employees grouped by their age
-- Gender: Groups results by each unique gender
-- AVG(age): Calculates average age for each gender
-- MAX(age): Finds the oldest age in the gender group
-- MIN (age): Finds the youngest age in each gender group
-- COUNT (age): Counts number of entries in each gender group

-- ORDER BY: sorts results of a query in either ascending (default) or descending order.

SELECT
	*
FROM
	parks_and_recreation.employee_demographics
ORDER BY
	first_name;
-- Selects all the results from our database and table respectively and orders the results by first_name
    
SELECT
	*
FROM
	parks_and_recreation.employee_demographics
ORDER BY
	first_name desc;
    
  -- Selects all the results from our database and table respectively and orders the results by first_name in descending order
    
SELECT
	*
FROM
	parks_and_recreation.employee_demographics
ORDER BY
	gender, age;
-- -- Selects all the results from our database and table respectively and orders the results first by gender and the age in ascending order
    
SELECT
	*
FROM
	parks_and_recreation.employee_demographics
ORDER BY
	gender, age desc;
    
SELECT
	*
FROM
	parks_and_recreation.employee_demographics
ORDER BY 
	4 desc;
