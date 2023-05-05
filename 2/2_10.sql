-- 2.10

-- 2
SELECT name, surname, student_id
FROM student
WHERE student_id IN (
    SELECT student_id
    FROM exam_marks
    WHERE subj_id = 10 and mark > (SELECT AVG(mark) FROM exam_marks)
);

-- 3
SELECT name, surname, student_id
FROM student
WHERE student_id IN (
    SELECT student_id
    FROM exam_marks
    WHERE subj_id = 10 and mark < (SELECT AVG(mark) FROM exam_marks)
);

-- 5
SELECT  name, surname, student_id
FROM student a
WHERE stipend = (
    SELECT MAX(stipend)
    FROM student
    GROUP BY city
    HAVING city = a.city
);