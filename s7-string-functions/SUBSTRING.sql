SELECT SUBSTRING('Hello World', 1, 4);

-- 'Hell'

SELECT SUBSTRING('Hello World', 7);

-- 'World'

SELECT SUBSTRING('Hello World', -3);

--  'rld'

SELECT SUBSTRING("Where I'm Calling From: Selected Stories", 1, 10);

-- 'Where I\'m '

SELECT SUBSTRING(title, 1, 10) FROM books;

-- 'The Namesa'
-- 'Norse Myth'

-- use AS for an alias that looks better for a heading than SUBSTRING(title, 1, 10)
SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;

-- 'The Namesa'
-- 'Norse Myth'
 
--  SUBSTR also works just fine
SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;

-- 'The Namesa'
-- 'Norse Myth'


-- Combining CONCAT and SUBSTR
SELECT 
	CONCAT
        (
            SUBSTR(title, 1, 10) , '...'
        ) AS 'short title' 
FROM books;

-- 'The Namesa...'
-- 'Norse Myth...'
