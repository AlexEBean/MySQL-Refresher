SELECT DISTINCT author_lname FROM books;

-- Only unique author last names will appear


SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) AS 'full name' FROM books;

-- Unique full names appear

SELECT DISTINCT author_fname, author_lname FROM books;

-- Unique first and last names in two columns