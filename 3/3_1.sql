-- 3.1
-- 1
INSERT INTO subject(semester, subj_name, hour)
VALUES (1, 'Math_Methods', '72');
-- 4
UPDATE university
SET rating = rating + 5
WHERE city = 'Ростов';
-- 5
UPDATE student
SET city = 'Воронеж'
WHERE surname = 'Иванов';