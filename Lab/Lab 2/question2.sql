-- 2. Set Operation
-- Using INTERSECT, list the student_id of every student who both scored 85 or
-- above in at least one exam and appeared for course 201. Sort ascending.

SELECT student_id
FROM exam
WHERE marks >= 85

intersect

select student_id
from exam
where course_id = 201

order by student_id;