-- 2.12

-- 2
SELECT name, surname
FROM student
WHERE student_id IN(
    SELECT student_id
    FROM exam_marks
    WHERE mark > 2
);

-- 3
SELECT DISTINCT student_id
FROM exam_marks
WHERE mark IN (
    SELECT mark
    FROM exam_marks
    WHERE student_id = 12
);

-- 6
SELECT surname, name 
FROM lecturer
WHERE lecturer_id IN (
    SELECT l.lecturer_id
    FROM subject s, subj_lect l
    WHERE l.subj_id = s.subj_id 
    AND semester < 3
);