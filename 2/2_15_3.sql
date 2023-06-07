-- 2.15.3
-- 1
SELECT first.surname,
    second.surname,
    first.city
FROM student first,
    student second
WHERE first.city = second.city
    AND first.student_id < second.student_id;
-- 2
SELECT first.univ_name,
    second.univ_name
FROM university first,
    university second
WHERE first.city = second.city
    AND first.univ_id < second.univ_id;
-- 3
SELECT first.univ_name,
    first.city
FROM university first,
    university second
WHERE first.rating >= second.rating
    AND second.univ_name = 'ВГУ';