DELIMITER $$

CREATE FUNCTION ufn_calculate_future_value(initial_sum DECIMAL(19,4), interest_rate DOUBLE(19,4), num_years INT)
RETURNS DECIMAL(10,4)
DETERMINISTIC
BEGIN
RETURN initial_sum * POW((1+interest_rate), num_years);
END $$


CREATE PROCEDURE usp_calculate_future_value_for_account(target_account_id INT, interest_rate DECIMAL(10,4))
BEGIN
SELECT a.id AS account_id, ah.first_name, ah.last_name, a.balance AS current_balance ,
ufn_calculate_future_value(a.balance, interest_rate, 5) AS balance_in_5_years
FROM account_holders AS ah
JOIN accounts AS a ON ah.id = a.account_holder_id
WHERE a.id = target_account_id;
END $$

DELIMITER ;

DROP FUNCTION ufn_calculate_future_value;

DROP PROCEDURE usp_calculate_future_value_for_account;

CALL usp_calculate_future_value_for_account(1, 0.1);
