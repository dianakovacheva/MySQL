USE book_library;

SELECT 
    title
FROM
    books
WHERE
    title REGEXP '^The';