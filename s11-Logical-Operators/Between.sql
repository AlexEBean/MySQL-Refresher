SELECT title, released_year FROM books 
WHERE released_year BETWEEN 2004 AND 2015
ORDER BY released_year;
 
SELECT title, released_year FROM books 
WHERE released_year NOT BETWEEN 2004 AND 2015
ORDER BY released_year;

SELECT name, birthdt FROM people WHERE birthdt BETWEEN '1980-01-01' AND '2000-01-01';

-- For best results when using BETWEEN with date or time values, use CAST() to explicitly convert the values to the desired data type. 
-- Examples: If you compare a DATETIME to two DATE values, convert the DATE values to DATETIME values. 
-- If you use a string constant such as '2001-1-1' in a comparison to a DATE, cast the string to a DATE.

SELECT 
    name, 
    birthdt 
FROM people
WHERE 
    birthdt BETWEEN CAST('1980-01-01' AS DATETIME)
    AND CAST('2000-01-01' AS DATETIME);