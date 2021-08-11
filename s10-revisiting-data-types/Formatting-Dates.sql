SELECT name, birthdate FROM people;
 
SELECT name, DAY(birthdate) FROM people;
 
SELECT name, birthdate, DAY(birthdate) FROM people;
 
SELECT name, birthdate, DAYNAME(birthdate) FROM people;
-- Name of day of the week i.e. 'Friday', 'Saturday', Tuesday'
 
SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
-- Number of day of the week starting with Sunday i.e. 6, 7, 3
 
SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;
 
SELECT name, birthtime, DAYOFYEAR(birthtime) FROM people;
-- Resulted in current day for all rows.  Not helpful.
 
SELECT name, birthdt, DAYOFYEAR(birthdt) FROM people;
 
SELECT name, birthdt, MONTH(birthdt) FROM people;
-- Number month i.e. 11, 12, 8
 
SELECT name, birthdt, MONTHNAME(birthdt) FROM people;
-- Name of month
 
SELECT name, birthtime, HOUR(birthtime) FROM people;

SELECT name, birthdt, HOUR(birthdt) FROM people;

SELECT name, birthdt, MINUTE(birthdt) FROM people;

SELECT name, birthdt, DATE_FORMAT(birthdt, '%W %M %D %Y') FROM people;
-- 'Friday November 11th 1983', 'Saturday December 25th 1943'

SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;
-- '11/11/1983', '12/25/1943'


SELECT name, DATE_FORMAT(birthdt, 'Was born on a %W') FROM people;
-- 'Padma', 'Was born on a Friday'
-- 'Larry', 'Was born on a Saturday'

SELECT name, DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;
-- 'Padma', '11/11/1983 at 10:07'
-- 'Larry', '12/25/1943 at 04:10'
