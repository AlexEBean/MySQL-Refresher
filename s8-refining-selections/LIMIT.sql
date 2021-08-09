SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 5;

-- Limits to the last five books released

SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,5;

-- This does the same thing as previous.  This way allows you to choose a starting point. 

SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 5,7;

-- This pulls seven books starting with the book that has the sixth most recent release year.


SELECT * FROM tbl LIMIT 95,18446744073709551615;

-- If you want all the data from a certain point to the end, you have to use a massive number that you know exceeds your data.