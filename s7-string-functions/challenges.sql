SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));

-- '?DERTAH HCUS HTIW EM TA KOOL TAC YM SEOD YHW'

SELECT
  REPLACE
  (
    CONCAT('I', ' ', 'like', ' ', 'cats'),
    ' ',
    '-'
  );

--   'I-like-cats'

SELECT
  REPLACE
  (
    title,
    ' ',
    '->'
  ) AS title
FROM books;

SELECT
    author_lname AS 'forwards',
    REVERSE(author_lname) AS 'backwards'
FROM books; 

SELECT
  UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps'
FROM books;

SELECT
    CONCAT(title, ' was released in ', released_year) AS blurb
FROM books;

SELECT
    title,
    CHAR_LENGTH(title) AS 'character count'
FROM books;

SELECT
    CONCAT(SUBSTR(title, 1, 10), '...') AS 'short title',
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') as quantity
FROM books;