SELECT MAX(pages), title
FROM books;

-- The problem is that this does give the MAX pages, but it pulls the first title, not the one that matches the max page count
-- Using a subquery will get us the result we want

SELECT title, pages FROM books 
WHERE pages = (SELECT MAX(pages) 
                FROM books); 

-- This also works. 

SELECT title, pages FROM books 
ORDER BY pages DESC LIMIT 1;

-- Below are the same examples, but MIN instead
 
SELECT title, pages FROM books 
WHERE pages = (SELECT MIN(pages) 
                FROM books); 
 
 
SELECT title, pages FROM books 
ORDER BY pages ASC LIMIT 1;