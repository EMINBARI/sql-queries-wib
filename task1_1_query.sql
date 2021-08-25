--1.1 Какую сумму в среднем в месяц тратит: пользователи в возрастном диапазоне от 18 до 25 лет включительно.

SELECT age, EXTRACT (MONTH FROM purchasedate), ROUND(AVG(price::NUMERIC),2)
FROM purchases
join users ON users.userid = purchases.userid
join items ON items.itemid = purchases.itemid
WHERE age BETWEEN 18 and 25
GROUP BY purchasedate, age
