-- 2.1

-- 1
select * FROM university;

-- 3
select kurs, surname, name, stipend from student;

-- 10
select surname, name, kurs from student
where stipend >= 100 and city = 'Воронеж';

-- 19
select * from student where city is null;