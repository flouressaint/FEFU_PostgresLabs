-- 4.4
-- 3
CREATE TABLE UNIVERSITY1(
    UNIV_ID SERIAL PRIMARY KEY,
    UNIV_NAME VARCHAR(200) NOT NULL,
    RATING INTEGER,
    CITY VARCHAR(200)
);
-- 2
CREATE TABLE SUBJECT1(
    SUBJ_ID SERIAL PRIMARY KEY,
    SUBJ_NAME VARCHAR(200) NOT NULL,
    HOUR INTEGER NOT NULL,
    SEMESTER INTEGER NOT NULL
);
-- 1
CREATE TABLE LECTURER1(
    LECTURER_ID SERIAL PRIMARY KEY,
    SURNAME VARCHAR(200) NOT NULL,
    NAME VARCHAR(200) NOT NULL,
    CITY VARCHAR(200),
    UNIV_ID INTEGER NOT NULL
);
-- 4
CREATE TABLE EXAM_MARKS1(
    EXAM_ID SERIAL PRIMARY KEY,
    STUDENT_ID INTEGER,
    SUBJ_ID INTEGER,
    MARK INTEGER,
    EXAM_DATE DATE
);