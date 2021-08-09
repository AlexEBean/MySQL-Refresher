-- Pretty self-explanatory

SELECT AVG(released_year) 
FROM books;
 
SELECT AVG(pages) 
FROM books;
 
SELECT AVG(stock_quantity) 
FROM books 
GROUP BY released_year;

-- The result from the command below looks nicer than the one from the command above.

SELECT released_year, AVG(stock_quantity) 
FROM books 
GROUP BY released_year;

-- Below looks cleaner still

SELECT released_year, AVG(stock_quantity) 
FROM books 
GROUP BY released_year
ORDER BY released_year;

 
SELECT author_fname, author_lname, AVG(pages) FROM books
GROUP BY author_lname, author_fname
ORDER BY author_lname, author_fname;;