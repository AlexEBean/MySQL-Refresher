SELECT title, released_year FROM books
WHERE released_year < 2000
ORDER BY released_year;
 
SELECT title, released_year FROM books
WHERE released_year <= 2000
ORDER BY released_year;
 
SELECT 3 < -10;
-- returns 0 for false
 
SELECT -10 < -9;
-- returns 1 for true
 
SELECT 42 <= 42;
-- returns 1 for true
 
SELECT 'h' < 'p';
-- returns 1 for true
 
SELECT 'Q' <= 'q';
-- returns 1 for true