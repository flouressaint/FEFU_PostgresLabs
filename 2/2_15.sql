-- 2.15
-- 1
SELECT s.subj_id,
    s.subj_name,
    s.hour,
    s.semester,
    st.name,
    st.surname
FROM subject s
    JOIN student st ON s.semester = st.kurs * 2 - 1
    OR s.semester = st.kurs * 2;
-- 2
SELECT DISTINCT SURNAME,
    NAME
FROM STUDENT S,
    EXAM_MARKS E
WHERE S.STUDENT_ID = E.STUDENT_ID
    AND MARK > 2;