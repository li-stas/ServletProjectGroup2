drop table students;
DROP SEQUENCE sq_students;
DROP TRIGGER tr_students;

CREATE TABLE students
(id NUMERIC(4) NOT NULL,
 name VARCHAR(95) NOT NULL,
 scholarship FLOAT NOT NULL,
 CONSTRAINT students_pk PRIMARY KEY (id)
 );

CREATE SEQUENCE sq_students
    START WITH 1
    INCREMENT BY 1
    NOMAXVALUE;

CREATE OR REPLACE TRIGGER tr_students
    before INSERT ON students
    FOR each row
BEGIN
    if :new.id is null then
        SELECT sq_students.NEXTVAL
        INTO :new.id
        FROM dual;
    end if;
END;
COMMIT ;
