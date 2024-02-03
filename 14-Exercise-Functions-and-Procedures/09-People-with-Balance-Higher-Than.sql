USE soft_uni;

DELIMITER $$

CREATE PROCEDURE usp_get_holders_with_balance_higher_than(target_salary DECIMAL(19,4))
BEGIN
SELECT 
    ah.first_name, ah.last_name
FROM
    account_holders AS ah
        JOIN
    accounts AS a ON ah.id = a.account_holder_id
GROUP BY a.account_holder_id
HAVING target_salary < SUM(a.balance)
ORDER BY a.account_holder_id ASC;
END $$

DELIMITER ;

DROP PROCEDURE usp_get_holders_with_balance_higher_than;

CALL usp_get_holders_with_balance_higher_than(7000);
