-- 2.9

-- 1
SELECT *
FROM student
WHERE city = (
    SELECT city
    FROM university
    WHERE univ_id = student.univ_id
);

-- 2
SELECT name, surname 
FROM student
WHERE city <> (
    SELECT city
    FROM university
    WHERE univ_id = student.univ_id
    )
ORDER BY univ_id, kurs;

-- 8
SELECT *
FROM UNIVERSITY
WHERE UNIV_ID IN (
    SELECT UNIV_ID
    FROM LECTURER
    WHERE UNIV_ID = LECTURER.UNIV_ID
    GROUP BY univ_id
    HAVING COUNT(LECTURER_ID) >= 2
    )
ORDER BY RATING;


