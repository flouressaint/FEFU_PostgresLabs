CREATE TABLE UNIVERSITY(
    UNIV_ID SERIAL PRIMARY KEY ,
    UNIV_NAME VARCHAR(200) NOT NULL,
    RATING INTEGER,
    CITY VARCHAR(200)
);

CREATE TABLE SUBJECT(
    SUBJ_ID SERIAL PRIMARY KEY,
    SUBJ_NAME VARCHAR(200) NOT NULL,
    HOUR INTEGER NOT NULL,
    SEMESTER INTEGER NOT NULL
);

CREATE TABLE LECTURER(
    LECTURER_ID SERIAL PRIMARY KEY,
    SURNAME VARCHAR(200),
    NAME VARCHAR(200),
    CITY VARCHAR(200),
    UNIV_ID INTEGER,
    FOREIGN KEY(UNIV_ID) REFERENCES UNIVERSITY(UNIV_ID)
);

CREATE TABLE STUDENT(
    STUDENT_ID SERIAL PRIMARY KEY,
    SURNAME VARCHAR(200),
    NAME VARCHAR(200),
    STIPEND INTEGER,
    KURS INTEGER,
    CITY VARCHAR(200),
    BIRTHDAY DATE,
    UNIV_ID INTEGER,
    FOREIGN KEY (UNIV_ID) REFERENCES UNIVERSITY(UNIV_ID)
);

CREATE TABLE EXAM_MARKS(
    EXAM_ID SERIAL PRIMARY KEY,
    STUDENT_ID INTEGER,
    SUBJ_ID INTEGER,
    MARK INTEGER,
    EXAM_DATE DATE,
    FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT(STUDENT_ID),
    FOREIGN KEY (SUBJ_ID) REFERENCES SUBJECT(SUBJ_ID)
);

CREATE TABLE SUBJ_LECT(
    LECTURER_ID SERIAL PRIMARY KEY,
    SUBJ_ID INTEGER,
    FOREIGN KEY (LECTURER_ID) REFERENCES LECTURER(LECTURER_ID),
    FOREIGN KEY (SUBJ_ID) REFERENCES SUBJECT(SUBJ_ID)
);

INSERT INTO UNIVERSITY (UNIV_ID, UNIV_NAME, RATING, CITY) VALUES
('22','МГУ','610','Москва'),
('10','ВГУ','296','Воронеж'),
('11','НГУ','345','Новосибирск'),
('32','РГУ','421','Ростов'),
('14','БГУ','326','Белгород'),
('15','ТГУ','373','Томск'),
('18','ВГМА','327','Воронеж'),
('33','МГЛУ','111','Москва'),
('34','ДВФУ','200','Владивосток');

INSERT INTO SUBJECT (SUBJ_ID, SUBJ_NAME, HOUR, SEMESTER) VALUES
('10','Информатика','56','1'),
('22','Физика','34','1'),
('43','Математика','56','2'),
('56','История','34','4'),
('94','Английский','56','3'),
('73','Физкультура','34','5');

INSERT INTO LECTURER (LECTURER_ID, SURNAME, NAME, CITY, UNIV_ID) VALUES
('24','Колесников','Борис','Воронеж','10'),
('46','Никонов','Иван','Воронеж','10'),
('74','Лагутин','Павел','Москва','22'),
('108','Струков','Николай','Москва','22'),
('276','Николаев','Виктор','Воронеж','10'),
('328','Сорокин','Андрей','Орел','10');

INSERT INTO STUDENT (STUDENT_ID, SURNAME, NAME, STIPEND, KURS, CITY, BIRTHDAY, UNIV_ID) VALUES
('1','Иванов','Иван','150','1','Орел','1988-12-03','10'),
('3','Петров','Петр','200','3','Курск','1986-12-11','10'),
('6','Сидоров','Вадим','150','4','Москва','1985-06-07','22'),
('10','Кузнецов','Борис','0','2','Брянск','1987-12-08','10'),
('12','Зайцева','Ольга','250','2','Липецк','1987-05-21','10'),
('265','Павлов','Андрей','0','3','Воронеж','1985-11-05','10'),
('32','Котов','Павел','150','5','Белгород',null,'14'),
('654','Лукин','Артем','200','3','Воронеж','1987-12-11','10'),
('276','Петров','Антон','200','4',null,'1987-08-05','22'),
('55','Белкин','Вадим','250','5','Воронеж','1986-01-20','10');

INSERT INTO EXAM_MARKS (EXAM_ID, STUDENT_ID, SUBJ_ID, MARK, EXAM_DATE) VALUES
('145','12','10','5','2006-01-12'),
('34','32','10','4','2006-01-23'),
('75','55','10','5','2006-01-05'),
('238','12','22','3','2005-06-17'),
('639','55','22',NULL,'2005-06-22'),
('43','6','22','4','2006-01-18');

INSERT INTO SUBJ_LECT (LECTURER_ID, SUBJ_ID) VALUES
('24','10'),
('46','22'),
('74','43'),
('108','56'),
('276','73'),
('328','94');