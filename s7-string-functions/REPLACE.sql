SELECT REPLACE('Hello World', 'Hell', '%$#@');

-- '%$#@o World'

SELECT REPLACE(title, 'e', '3') FROM books;

-- 'Th3 Nam3sak3'
-- 'Nors3 Mythology'

SELECT
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'weird string'
FROM books;

-- 'Th3 Nam3sa'
-- 'Nors3 Myth'
