/* average spend ver customer */
Select
ROUND(sum(o.amount)/ COUNT(o.user_id), 0) AS avg_spend_per_customer, -- same result
ROUND(AVG(o.amount), 0) AS avg_spend_per_customer -- same result
FROM    orders o

/* monthly average spend */
SELECT
EXTRACT(YEAR_MONTH FROM o.order_time),
ROUND(AVG(o.amount), 0) AS avg_monthly_spend
from orders o
group by EXTRACT(YEAR_MONTH FROM o.order_time)

/* average spend in each prefecture */
SELECT
p.id,
p.name,
ROUND(AVG(o.amount), 0) AS avg_spend_per_prefecture
FROM orders o
INNER JOIN users u
ON o.user_id = u.id
INNER JOIN prefectures p
ON u.prefecture_id = p.id
GROUP BY p.id

/* average monthly spend  in each prefecture */
SELECT
p.id,
p.name,
EXTRACT(YEAR_MONTH FROM o.order_time),
ROUND(AVG(o.amount), 0) AS avg_spend_per_prefecture
FROM orders o
INNER JOIN users u
ON o.user_id = u.id
INNER JOIN prefectures p
ON u.prefecture_id = p.id
GROUP BY p.id, EXTRACT(YEAR_MONTH FROM o.order_time)
/* GROUP BY EXTRACT(YEAR_MONTH FROM o.order_time) */
ORDER BY p.id, EXTRACT(YEAR_MONTH FROM o.order_time)
