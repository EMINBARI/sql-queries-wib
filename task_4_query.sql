--Топ-3 товаров по выручке и их доля в общей выручке за любой год.

SELECT purchases.itemid, round( CAST((SUM(items.price) OVER (PARTITION BY purchases.itemid) / SUM(items.price) OVER()*100.0) as numeric), 2) as PERCENT
FROM purchases
join items ON items.itemid = purchases.itemid
GROUP BY purchases.itemid, items.price
ORDER BY percent DESC
LIMIT 3
