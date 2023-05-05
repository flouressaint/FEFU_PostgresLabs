-- 2.2

-- 1
select * from exam_marks
where exam_date between '2005-01-10' and '2005-01-20';

-- 4
select * from student
where name like 'И%' or name like 'С%';

-- 5 
select * from exam_marks
where mark is null;

-- 9 
select * from subject
where subj_name like '%ия';