SELECT UPPER('Hello World');

-- 'HELLO WORLD'

SELECT LOWER('Hello World');

-- 'hello world'

SELECT UPPER(title) FROM books;

-- 'THE NAMESAKE'
-- 'NORSE MYTHOLOGY'
 
SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title), '!') FROM books;

-- 'MY FAVORITE BOOK IS THE NAMESAKE!'
-- 'MY FAVORITE BOOK IS NORSE MYTHOLOGY!'
 
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;

-- 'MY FAVORITE BOOK IS the namesake.'
-- 'MY FAVORITE BOOK IS norse mythology.'


