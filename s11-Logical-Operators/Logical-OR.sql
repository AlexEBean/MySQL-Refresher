SELECT 
    title, 
    author_lname, 
    released_year 
FROM books
WHERE author_lname ='Eggers' 
    OR released_year > 2010
ORDER BY released_year;;

SELECT title, 
       author_lname, 
       released_year, 
       stock_quantity 
FROM   books 
WHERE  author_lname = 'Eggers' 
    OR released_year > 2010 
    OR     stock_quantity > 100
ORDER BY released_year;;