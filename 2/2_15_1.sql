-- 2.15.1
-- 1
SELECT univ_id,
    city,
    univ_name,
    rating,
    COUNT(student_id) AS num_students
FROM university
    NATURAL JOIN student
GROUP BY univ_id;
-- 5
SELECT univ_id,
    city,
    univ_name,
    rating,
    semester,
    SUM(subject.hour)
FROM university
    NATURAL JOIN lecturer
    NATURAL JOIN subj_lect
    NATURAL JOIN subject
GROUP BY univ_id,
    semester;
-- 26
SELECT surname,
    name,
    univ_name,
    city,
    rating
FROM university
    NATURAL JOIN lecturer
WHERE rating < 400;