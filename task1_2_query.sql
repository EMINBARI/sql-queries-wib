--1.2 Какую сумму в среднем в месяц тратит: пользователи в возрастном диапазоне от 18 до 25 лет включительно.

SELECT age, EXTRACT (MONTH FROM purchasedate) as month, ROUND(AVG(price::NUMERIC),2) as avg_expns
FROM purchases
join users ON users.userid = purchases.userid
join items ON items.itemid = purchases.itemid
WHERE age BETWEEN 26 and 35
GROUP BY purchasedate, age
