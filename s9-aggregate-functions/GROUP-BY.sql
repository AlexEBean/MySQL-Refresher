-- GROUP BY summarizes or aggregates identical data into single rows

SELECT title, author_lname FROM books
GROUP BY author_lname;

-- Looks weird because it Groups things together by author_lname
 
SELECT author_lname, COUNT(*) 
FROM books GROUP BY author_lname;
 
-- Shows a list of counts that shows how many books share the same author_lname

 
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;
 
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

-- This works better because it accounts for different authors that share the same last name
 
 
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

-- List of how many books were released in each year
 
SELECT CONCAT('In ', released_year, ', ', COUNT(*), ' book(s) released') AS year FROM books GROUP BY released_year;
