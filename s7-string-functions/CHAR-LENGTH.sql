SELECT CHAR_LENGTH('Hello World');

-- '11'

SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
 
-- 'Lahiri', '6'
-- 'Gaiman', '6'


SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') AS 'length statement' FROM books;

-- 'Lahiri is 6 characters long.'
-- 'Gaiman is 6 characters long.'
