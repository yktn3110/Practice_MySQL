use mydb;


/* inner join */
select users.id, users.last_name, users.first_name, prefectures.name as prefecture_name 
from users
inner join prefectures
on users.prefecture_id = prefectures.id;

select users.id, users.last_name, users.first_name, p.name 
from users
inner join prefectures as p
on users.prefecture_id = p.id;


/* inner join where */
select 
    u.id, 
    u.last_name, 
    u.first_name, 
    p.name 
from users u
inner join prefectures p
on u.prefecture_id = p.id
where u.gender = 2;


/* practice */
SELECT
    o.id,
    o.order_time,
    o.amount,
    u.id,
    u.last_name,
    u.first_name,
    u.prefecture_id
FROM orders o
INNER JOIN users u
ON o.user_id = u.id
WHERE 
    u.prefecture_id = 13
    AND EXTRACT(YEAR_MONTH FROM o.order_time) = 201701;
    --AND o.order_time >= '2017-01-01:00:00:00'
    --AND o.order_time < '2017-02-01:00:00:00';


/* outer join */
SELECT
    u.id,
    u.last_name,
    u.first_name,
    o.id
from
    users u
LEFT OUTER JOIN
    orders o
ON u.id = o.user_id
ORDER BY
    u.id;


/* practice */
SELECT
    p.id,
    p.name,
    sum(o.product_qty)
FROM
    products p
LEFT OUTER JOIN
    order_details o
ON p.id = o.product_id
GROUP BY
    p.id
ORDER BY
    p.id;

SELECT
    o.id,
    u.last_name,
    u.first_name,
    o.amount,
    o.order_time,
    od.product_qty,
    p.name
FROM
    orders o
LEFT OUTER JOIN
    order_details od
ON o.id = od.order_id
LEFT OUTER JOIN
    products p
ON od.product_id = p.id
LEFT OUTER JOIN
    users u
ON o.user_id = u.id
ORDER BY
    o.id;

SELECT
    p.id,
    p.name,
    c.name
FROM
    products p
LEFT OUTER JOIN
    products_categories pc
ON p.id = pc.product_id
LEFT OUTER JOIN
    categories c
ON pc.category_id = c.id
ORDER BY
    p.id;


/* union */
SELECT
    email,
    last_name,
    first_name,
    gender
FROM
    users
UNION --- 重複行は1行にまとめる (allをつけると重複行もすべて表示)
SELECT
    email,
    last_name,
    first_name,
    gender
FROM
    admin_users;


/* union with condition */
SELECT
    email,
    last_name,
    first_name,
    gender
FROM
    users
WHERE
    gender = 1
UNION 
SELECT
    email,
    last_name,
    first_name,
    gender
FROM
    admin_users
WHERE gender = 2
ORDER BY
    last_name,
    first_name;


