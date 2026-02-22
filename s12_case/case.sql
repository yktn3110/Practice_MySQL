/* case */
SELECT
    users.id,
    COUNT(*),
    CASE
        WHEN COUNT(*) >=5 THEN 'A'
        WHEN COUNT(*) >=2 THEN 'B'
        ELSE 'C'
    END AS user_rank
FROM
    users
INNER JOIN orders
ON users.id = orders.user_id
GROUP BY
    users.id
ORDER BY
    user_rank ASC;

/* replace null to 0 */
select
    p.id,
    p.name,
    CASE
        WHEN sum(od.product_qty) IS NULL THEN 0
        ELSE sum(od.product_qty)
    END AS total_quantity

FROM
products p
LEFT OUTER JOIN order_details od
ON p.id = od.product_id
GROUP BY
    p.id

/* practice */
SELECT
    p.id,
    p.name,
    CASE
        WHEN sum(od.product_qty) IS NULL THEN 0
        ELSE sum(od.product_qty)
    END AS total_quantity
    ,
    CASE
        WHEN sum(od.product_qty) > 20 THEN 'A'
        WHEN sum(od.product_qty) > 10 THEN 'B'
        ELSE 'C'
    END AS rank
FROM
    products p
LEFT OUTER JOIN order_details od
ON p.id = od.product_id
GROUP BY
    p.id
ORDER BY
    rank


