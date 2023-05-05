-- 2.8
-- 1
SELECT *
FROM student
WHERE stipend = (
        SELECT MAX(STIPEND)
        FROM student
    )
ORDER BY SURNAME;
-- 2
SELECT *
FROM student
WHERE stipend > (
        SELECT AVG(STIPEND)
        FROM student
    );
-- 5
SELECT name,
    surname
FROM student
WHERE city <> (
        SELECT city
        FROM university
        WHERE univ_id = student.univ_id
    );