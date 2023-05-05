-- 2.4

-- 1
SELECT COUNT(*) FROM exam_marks
WHERE subj_id = '10';

-- 7
SELECT EXAM_DATE, COUNT(STUDENT_ID) FROM exam_marks
GROUP BY exam_date;

-- 9 
SELECT AVG(MARK) FROM exam_marks
GROUP BY exam_id;