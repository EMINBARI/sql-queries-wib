--Какой товар обеспечивает дает наибольший вклад в выручку за последний год.

SELECT items.itemid, SUM(items.price) as profit
FROM purchases
join items ON items.itemid = purchases.itemid
WHERE purchases.purchasedate BETWEEN NOW() - INTERVAL '1 year' AND NOW()
GROUP BY items.itemid
ORDER BY profit DESC
LIMIT 1
