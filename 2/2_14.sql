-- 2.14
-- 1
SELECT *
FROM university
WHERE univ_name != 'ВГУ'
    and rating >= ANY(
        SELECT rating
        FROM university
        WHERE univ_name = 'ВГУ'
    );
-- 2
SELECT *
FROM student
WHERE city <> ALL(
        SELECT city
        FROM university
    );
-- 3
SELECT *
FROM exam_marks
WHERE mark > ALL(
        SELECT mark
        FROM exam_marks
        WHERE exam_id = '12'
    );