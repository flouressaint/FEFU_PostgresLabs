CREATE VIEW stip AS
SELECT student_id,
    stipend
FROM student
WHERE stipend BETWEEN 100 AND 200 WITH CHECK OPTION;