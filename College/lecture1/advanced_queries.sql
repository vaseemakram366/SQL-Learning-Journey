-- How to retrieve data, birth date , address from ab eyploye from table 
SELECT emp_name, birth_date, address
FROM employee;

-- for only one employee
SELECT emp_name, birth_date, address
FROM employee
WHERE emp_id = 1;

-- Retrige the name and address of all employees who works for the research department 
SELECT emp_name, address
FROM employee
WHERE dept_name = 'Research';

-- Table ko join kese krenge iska 2 tables ko recently code ma 
SELECT employee.emp_name, department.dept_name
FROM employee
JOIN department
ON employee.dept_id = department.dept_id;

--SELECT 
--     P.PNUMBER,
--     P.DNUM,
--     E.LNAME,
--     E.ADDRESS,
--     E.BDATE
-- FROM PROJECT P
-- JOIN DEPARTMENT D
--     ON P.DNUM = D.DNUMBER
-- JOIN EMPLOYEE E
--     ON D.MGRSSN = E.SSN
-- WHERE P.PLOCATION = 'Stafford';



-- Is data ka acc For every project located in stenford list the project number controlling department number and department manager last name address and birth date ?
SELECT 
    P.Pnumber,
    P.Dnum,
    E.Lname,
    E.Address,
    E.Bdate
FROM PROJECT P
JOIN DEPARTMENT D
    ON P.Dnum = D.Dnumber
JOIN EMPLOYEE E
    ON D.Mgr_ssn = E.Ssn
WHERE P.Plocation = 'Stafford';

-- Make a list of all project no. That involves an employee whose last name is smith either as a worker or as a manager of the department 
-- For each employee retrieve the employees first and last name and the first and last name of his and her
-- 1.rojects involving an employee whose last name is Smith
(SELECT DISTINCT P.PNUMBER
FROM PROJECT P
JOIN DEPARTMENT D
    ON P.DNUM = D.DNUMBER
JOIN EMPLOYEE E
    ON D.MGRSSN = E.SSN
WHERE E.LNAME = 'Smith')

UNION

(SELECT DISTINCT P.PNUMBER
FROM PROJECT P
JOIN WORKS_ON W
    ON P.PNUMBER = W.PNO
JOIN EMPLOYEE E
    ON W.ESSN = E.SSN
WHERE E.LNAME = 'Smith');

-- 2.For each employee, retrieve employee's first/last name + immediate supervisor's first/last name
SELECT
    E.FNAME AS Employee_First_Name,
    E.LNAME AS Employee_Last_Name,
    S.FNAME AS Supervisor_First_Name,
    S.LNAME AS Supervisor_Last_Name
FROM EMPLOYEE E
JOIN EMPLOYEE S
    ON E.SUPERSSN = S.SSN;