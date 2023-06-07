-- 4.6.10
CREATE TABLE subject_1 (
    subject_id INTEGER PRIMARY KEY,
    subj_name CHAR(20),
    hour DECIMAL (4),
    semester SMALLINT
);
CREATE TABLE subj_lect_1 (
    lecturer_id INTEGER NOT NULL REFERENCES lecturer1,
    subj_id INTEGER NOT NULL REFERENCES subject_1,
    CONSTRAINT subj_lect__1 PRIMARY KEY (lecturer_id, subj_id)
);
CREATE TABLE subj_lect_2 (
    lecturer_id INTEGER NOT NULL,
    subj_id INTEGER NOT NULL,
    CONSTRAINT subj_lect__2 PRIMARY KEY (lecturer_id, subj_id),
    CONSTRAINT lect_id_for_key FOREIGN KEY (lecturer_id) REFERENCES lecturer1 ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT subj_id_lect_id FOREIGN KEY (subj_id) REFERENCES subject_1 ON UPDATE NO ACTION ON DELETE NO ACTION
);