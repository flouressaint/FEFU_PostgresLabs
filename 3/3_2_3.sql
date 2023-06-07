-- 3.2.3
-- 1
INSERT INTO student1
SELECT *
FROM student
WHERE 5 < (
        SELECT COUNT(subj_id)
        FROM exam_marks
        WHERE exam_marks.student_id = student.student_id
            AND mark > 2
    );
-- 2
DELETE FROM subject1
WHERE 0 = (
        SELECT COUNT(mark)
        FROM exam_marks
        WHERE exam_marks.subj_id = subject1.subj_id
    );
-- 3
UPDATE student
SET stipend = stipend * 1.2
WHERE 50 < (
        SELECT SUM(mark)
        FROM exam_marks
        WHERE exam_marks.student_id = student.student_id
    );