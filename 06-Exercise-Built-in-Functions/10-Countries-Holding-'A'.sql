USE geography;

SELECT 
    country_name, iso_code
FROM
    countries
WHERE
    LOWER(country_name) REGEXP '(.*[A]){3}'
ORDER BY iso_code;