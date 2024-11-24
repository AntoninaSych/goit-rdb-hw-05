-- 3. Напишіть SQL запит, вкладений в операторі FROM, який буде обирати рядки з умовою quantity>10 з таблиці order_details.
-- Для отриманих даних знайдіть середнє значення поля quantity — групувати слід за order_id.



SELECT
    order_id,
    AVG(quantity) AS avg_quantity
FROM (
         SELECT *
         FROM order_details
         WHERE quantity > 10
     ) AS filtered_order_details
GROUP BY order_id;
