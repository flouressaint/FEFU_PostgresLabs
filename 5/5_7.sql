-- 5.7
-- 1
CREATE VIEW five AS
SELECT *
FROM student A
WHERE 5 = (
        SELECT MIN (mark)
        FROM exam_marks B
        WHERE A.student_id = B.student_id
    );
-- 2
CREATE VIEW kol AS
SELECT city,
    COUNT (student_id) AS kol_stud
FROM student
GROUP BY city;
-- 3
CREATE VIEW novstudent AS
SELECT exam_marks.student_id,
    surname,
    NAME,
    AVG(mark) AS avg_mark,
    SUM(mark) AS sum_mark
FROM exam_marks,
    student
WHERE student.student_id = exam_marks.student_id
GROUP BY surname,
    NAME,
    exam_marks.student_id;