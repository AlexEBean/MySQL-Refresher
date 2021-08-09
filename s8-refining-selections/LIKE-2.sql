SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';
-- This is looking for where stock_quantity is two characters long, or in this case, two digits

LIKE '(___)___-____';

-- This would work for finding phone numbers specifically
 
SELECT title FROM books WHERE title LIKE '%\%%';

-- This is how you would find a book that has % in the title.
 
SELECT title FROM books WHERE title LIKE '%\_%';

-- This is how you would find a book that has _ in the title.