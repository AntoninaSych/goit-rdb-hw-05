-- 5. Створіть функцію з двома параметрами, яка буде ділити перший параметр на другий. Обидва параметри та значення, що повертається, повинні мати тип FLOAT.
--
-- Використайте конструкцію DROP FUNCTION IF EXISTS. Застосуйте функцію до атрибута quantity таблиці order_details . Другим параметром може бути довільне число на ваш розсуд.


DROP FUNCTION IF EXISTS divide_values;

DELIMITER $$

CREATE FUNCTION divide_values(a FLOAT, b FLOAT)
    RETURNS FLOAT
    DETERMINISTIC
BEGIN
    IF b = 0 THEN
        RETURN NULL;
ELSE
        RETURN a / b;
END IF;
END $$

DELIMITER ;


SELECT
    order_id,
    product_id,
    quantity,
    divide_values(quantity, 2.0) AS divided_quantity
FROM
    order_details;