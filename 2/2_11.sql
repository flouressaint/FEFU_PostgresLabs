-- 2.11

-- 1 
SELECT * 
FROM student
WHERE EXISTS (
    SELECT *
    FROM university
    WHERE rating > 300 
    AND student.univ_id = university.univ_id
);

-- 2
SELECT * 
FROM student
WHERE univ_id IN (
    SELECT univ_id
    FROM university
    WHERE rating > 300 
);


-- 11
SELECT *
FROM university
WHERE NOT EXISTS(
    SELECT *
    FROM student
    WHERE university.univ_id = student.univ_id
);