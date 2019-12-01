
SELECT COUNT(*)
FROM EMPLOYEES

--Question 1
SELECT EMPLOYEES.emp_no,last_name,first_name,gender,SALARY.salary
FROM EMPLOYEES
INNER JOIN SALARY ON EMPLOYEES.emp_no = SALARY.emp_no
ORDER BY EMPLOYEES.emp_no ASC;

--Question 2
SELECT *
FROM EMPLOYEES
WHERE hire_date BETWEEN '1986-01-01' AND NOW()
ORDER BY emp_no ASC;

MANAGERS.dept_no,MANAGERS.emp_no,EMPLOYEES.last_name,EMPLOYEES.first_name,EMPLOYEES.from_date,EMPLOYEES.to_date


--Question 3
SELECT MANAGERS.dept_no,DEPARTMENTS.dept_name,MANAGERS.emp_no,EMPLOYEES.last_name,EMPLOYEES.first_name, MANAGERS.from_date, MANAGERS.to_date
FROM EMPLOYEES
INNER JOIN MANAGERS ON EMPLOYEES.emp_no = MANAGERS.emp_no
INNER JOIN DEPARTMENTS ON MANAGERS.dept_no = DEPARTMENTS.dept_no;

--Question 4
SELECT DEPT_EMPLOYEES.emp_no,EMPLOYEES.last_name,EMPLOYEES.first_name, DEPARTMENTS.dept_name
FROM EMPLOYEES
INNER JOIN DEPT_EMPLOYEES ON EMPLOYEES.emp_no = DEPT_EMPLOYEES.emp_no
INNER JOIN DEPARTMENTS ON DEPT_EMPLOYEES.dept_no = DEPARTMENTS.dept_no
ORDER BY DEPT_EMPLOYEES.emp_no;

--Question 5
SELECT * 
FROM EMPLOYEES
WHERE first_name = 'Hercules' AND last_name ILIKE 'B%'
ORDER BY emp_no ASC;
	
--Question 6
SELECT DEPT_EMPLOYEES.emp_no,EMPLOYEES.last_name,EMPLOYEES.first_name, DEPARTMENTS.dept_name
FROM EMPLOYEES
INNER JOIN DEPT_EMPLOYEES ON EMPLOYEES.emp_no = DEPT_EMPLOYEES.emp_no
INNER JOIN DEPARTMENTS ON DEPT_EMPLOYEES.dept_no = DEPARTMENTS.dept_no
WHERE DEPARTMENTS.dept_name = 'Sales';

--Question 7
SELECT DEPT_EMPLOYEES.emp_no,EMPLOYEES.last_name,EMPLOYEES.first_name, DEPARTMENTS.dept_name
FROM EMPLOYEES
INNER JOIN DEPT_EMPLOYEES ON EMPLOYEES.emp_no = DEPT_EMPLOYEES.emp_no
INNER JOIN DEPARTMENTS ON DEPT_EMPLOYEES.dept_no = DEPARTMENTS.dept_no
WHERE DEPARTMENTS.dept_name = 'Sales' OR DEPARTMENTS.dept_name = 'Development';

--Question 8
SELECT EMPLOYEES.last_name, COUNT(EMPLOYEES.last_name) as total_count
FROM EMPLOYEES
GROUP BY EMPLOYEES.last_name
ORDER BY total_count DESC;


