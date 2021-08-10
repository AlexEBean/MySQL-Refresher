-- DATE
    -- Values With a Date But No Time
    -- 'YYYY-MM-DD' Format

-- TIME
    -- Values With a Time But No Date
    -- 'HH:MM:SS' Format

-- DATETIME
    -- Values With a Date AND Time
    -- 'YYYY-MM-DD HH:MM:SS' Format

-- DATETIME is typically used the most

CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');
 
SELECT * FROM people;