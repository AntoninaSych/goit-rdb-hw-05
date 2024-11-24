-- 1. Напишіть SQL запит, який буде відображати таблицю order_details та поле customer_id з таблиці orders відповідно для кожного поля запису з таблиці order_details.
--
-- Це має бути зроблено за допомогою вкладеного запиту в операторі SELECT.
--


SELECT
    order_details.*,
    (SELECT customer_id FROM orders WHERE orders.id = order_details.order_id) AS customer_id
FROM
    order_details;