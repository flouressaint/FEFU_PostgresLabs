-- 2.15.2
-- 1
SELECT surname,
    mark
FROM exam_marks
    LEFT OUTER JOIN student ON student.student_id = exam_marks.student_id
WHERE mark IS NOT NULL;
-- 3
SELECT surname,
    mark,
    subj_name
FROM exam_marks
    LEFT OUTER JOIN student ON student.student_id = exam_marks.student_id
    NATURAL JOIN subject
WHERE mark IS NOT NULL;
-- 7 
SELECT surname,
    name,
    univ_name,
    rating
FROM student
    LEFT OUTER JOIN university ON student.univ_id = university.univ_id
ORDER BY surname;