SELECT COUNT(*) FROM books;

-- Counts how many rows in books
 
SELECT COUNT(author_fname) FROM books;

-- Counts how many rows have author_fname
 
SELECT COUNT(DISTINCT author_fname) FROM books;

-- Counts how many rows have unique author_fname
 
SELECT COUNT(DISTINCT author_lname) FROM books;

-- Counts how many rows have unique author_lname
 
SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;

-- Counts how many unique combinations of author_lname and author_fname are in the database
 
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

-- Counts how many books have 'the' in the title