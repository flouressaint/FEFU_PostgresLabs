-- 2.3

-- 2
SELECT SUBSTRING(NAME, 1, 1) || '.' || surname || 
                ' ;место жительства - ' || city ||
                ' ;родился - ' || TO_CHAR(birthday, 'DD.MM.YY') FROM student;

-- 4 
SELECT INITCAP(NAME) || ' ' ||INITCAP(surname) || ' родился в ' || TO_CHAR(birthday, 'YYYY') || ' году' FROM STUDENT;

-- 5
SELECT SURNAME, NAME, STIPEND*100 FROM student;