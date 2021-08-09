SELECT author_lname FROM books ORDER BY author_lname;

-- Organized alphabetically using author last names

SELECT author_lname FROM books ORDER BY author_lname DESC;

-- Reverse alphabetical order

SELECT released_year FROM books ORDER BY released_year;

-- Chronological order

SELECT title, author_fname, author_lname 
FROM books ORDER BY 2;

-- Ordered by second category, being author_fname in this case

SELECT author_fname, author_lname FROM books 
ORDER BY author_lname, author_fname;

-- Ordered by last name first, then first name