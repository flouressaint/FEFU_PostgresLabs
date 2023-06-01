-- 2.15.3
-- 1
SELECT first.surname,
    second.surname,
    first.city
FROM student first,
    student second
WHERE first.city = second.city
    AND first.student_id < second.student_id;