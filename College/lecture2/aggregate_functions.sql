
-- USE startersql;
-- create Table employee(
-- emp_id int(4) primary key,
-- emp_name varchar(10),
-- dept_name varchar(10),
-- salary int(5));
-- SELECT * FROM employee;
insert into employee 
values(1, 'Aman', 'IT', 40000),
(2, 'Ryan', 'IT', 50000),
(3, 'Karan', 'HR', 35000),
(4, 'Rishabh', 'HR', 45000),
(5, 'Neha', 'Sales', 30000),
(6, 'Pooja', 'Sales', 40000);
SELECT count(*) as total_employee FROM employee;
select sum(salary) as total_salary from employee;
select avg(salary) as average_salary from employee;
select min(salary) as minimum_salary from employee;
select max(salary) as maximum_salary from employee;
select dept_name, sum(salary) as total_salary from employee where salary > 35000 group by dept_name order by total_salary desc;