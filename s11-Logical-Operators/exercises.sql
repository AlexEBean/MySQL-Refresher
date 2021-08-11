SELECT 10 != 10;
-- false
 
SELECT 15 > 14 && 99 - 5 <= 94;
-- true
 
SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;
-- true

SELECT *
FROM books
WHERE released_year < 1980
ORDER BY released_year;

SELECT *
FROM books
WHERE author_lname IN ('Eggers', 'Chabon');

SELECT *
FROM books
WHERE author_lname = 'Lahiri' 
	AND released_year > 2000;

SELECT *
FROM books
WHERE pages 
	BETWEEN 100 AND 200
ORDER BY pages;

SELECT *
FROM books
WHERE author_lname LIKE 'C%'
	OR author_lname LIKE 'S%';

-- This works a bit better
SELECT title, author_lname FROM books 
WHERE SUBSTR(author_lname, 1, 1) IN ('C', 'S');

SELECT title, author_lname,
	CASE
	 WHEN title LIKE '%stories%' THEN 'Short Stories'
     WHEN title IN ('Just Kids', 'A Heartbreaking Work  of Staggering Genius') THEN 'Memoir'
     ELSE 'Novel'
	END AS genre
FROM books
ORDER BY genre;

SELECT author_fname, author_lname, 
	CASE
		WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM books
GROUP BY 2, 1
ORDER BY 2, 1;