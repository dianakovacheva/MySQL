USE book_library;

SELECT 
    title
FROM
    books
WHERE
    title REGEXP '^Harry Potter and the'
;