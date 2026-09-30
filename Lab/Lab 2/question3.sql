-- # 3. Views
-- # Create a view named course_report that shows, for every course with at least one exam record, the course_id, the course_name, and the average marks rounded to two decimal places as average_marks.

create view course_report as
select
    c.course_id,
    c.course_name,
    round(avg(e.marks), 2) as
average_marks
from course c
join exam e
    on c.course_id = e.course_id
group by c.course_id, c.course_name 