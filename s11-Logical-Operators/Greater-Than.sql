SELECT title, released_year FROM books ORDER BY released_year;
 
SELECT title, released_year FROM books 
WHERE released_year > 2000 ORDER BY released_year;
 
SELECT title, released_year FROM books 
WHERE released_year >= 2000 ORDER BY released_year;
 
 SELECT title, stock_quantity FROM books WHERE stock_quantity >= 100 ORDER BY stock_quantity;
 
SELECT 99 > 1;
-- returns 1 for true
 
SELECT 99 > 567;
-- returns 0 for false
