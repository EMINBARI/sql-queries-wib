--В каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая.

SELECT EXTRACT (MONTH FROM purchasedate) as month, SUM(price) as profit
FROM purchases
join users ON users.userid = purchases.userid
join items ON items.itemid = purchases.itemid
WHERE users.age >= 35
GROUP BY purchasedate
ORDER BY profit DESC
LIMIT 1
