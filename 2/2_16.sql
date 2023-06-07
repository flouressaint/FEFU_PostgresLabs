-- 2.16.2
-- 1
SELECT univ_name,
    city,
    rating,
    'высокий'
FROM university
WHERE rating >= 300
UNION
SELECT univ_name,
    city,
    rating,
    'низкий'
FROM university
WHERE rating < 300
ORDER BY 4;
-- 3
SELECT name,
    surname,
    'студент'
FROM student
WHERE city = 'Москва'
UNION
SELECT name,
    surname,
    'преподаватель'
FROM lecturer
WHERE city = 'Москва';
-- 4
SELECT name,
    surname,
    'студент'
FROM student first,
    university second
WHERE first.UNIV_ID = second.UNIV_ID
    AND UNIV_NAME = 'ВГУ'
UNION
SELECT name,
    surname,
    'преподаватель'
FROM lecturer first,
    university second
WHERE first.UNIV_ID = second.UNIV_ID
    AND UNIV_NAME = 'ВГУ';