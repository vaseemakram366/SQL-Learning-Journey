-- 1. Subquery
-- Using a subquery - not a JOIN - list the student_id and name of every student
-- who has no exam record at all. Sort by student_id.

SELECT student_id, name
FROM student
WHERE student_id NOT IN (
  SELECT student_id
  FROM exam
)
ORDER BY student_id;