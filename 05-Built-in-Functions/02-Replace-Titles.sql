USE book_library;

SELECT 
    REPLACE(title, 'The', '***') AS 'title'
FROM
    books
WHERE
    title REGEXP '^The'
ORDER BY id;