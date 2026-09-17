-- use startersql;

-- CREATE TABLE student ( 
-- Student_id INT AUTO_INCREMENT PRIMARY KEY, 
-- name VARCHAR(100) NOT NULL, 
-- Dept_ID int
-- )

-- CREATE TABLE department ( 
-- Department_id INT AUTO_INCREMENT PRIMARY KEY, 
-- Dept_name VARCHAR(100) NOT NULL
-- )

-- insert into student values
-- (1, 'Aman', 10 ),
-- (2, 'Riya', 20 ),
-- (3, 'Karan', 30 ),
-- (4, 'Neha', 10 ),
-- (5, 'Ayush', 40 )
-- select * from student;

-- insert into department values
-- (10, 'CSE'),
-- (20, 'ECE'),
-- (30, 'BIO'),
-- (50, 'CHE');
-- select * from department;


-- SELECT  student.Student_id, student.name, department.Dept_name , Dept_ID from student join department on student.Dept_ID= department.Department_id;
-- SELECT  student.Student_id, student.name, department.Dept_name , Dept_ID from student left join department on student.Dept_ID= department.Department_id;
-- SELECT  student.Student_id, student.name, department.Dept_name , Dept_ID from student right join department on student.Dept_ID= department.Department_id;
-- SELECT  student.Student_id, student.name, department.Dept_name , Dept_ID from student full join department on student.Dept_ID= department.Department_id;
-- SELECT  student.Student_id, student.name, department.Dept_name , Dept_ID from student full join department;
-- SELECT  student.Student_id, student.name, department.Dept_name , Dept_ID from student cross join department;
-- SELECT  student.Student_id, student.name, department.Dept_name , Dept_ID from student join department on student.Dept_ID= department.Department_id where Student_id<30;
