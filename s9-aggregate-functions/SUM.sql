SELECT SUM(pages)
FROM books;

-- Sums all the numbers in the page column
 
SELECT SUM(released_year) 
FROM books;

-- Sums all the numbers in the released_year column
 
SELECT author_fname,
       author_lname,
       SUM(pages)
FROM books
GROUP BY
    author_lname,
    author_fname;

-- Produces a list that shows how many pages each author has written
 