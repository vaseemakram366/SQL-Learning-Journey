-- How to retrieve data, birth date , address from ab eyploye from table 
SELECT emp_name, birth_date, address
FROM employee;

-- for only one employee
SELECT emp_name, birth_date, address
FROM employee
WHERE emp_id = 1;