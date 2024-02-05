SET SQL_SAFE_UPDATES = 0;

DELETE FROM universities 
WHERE
    number_of_staff IS NULL;