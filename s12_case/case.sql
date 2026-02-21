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
