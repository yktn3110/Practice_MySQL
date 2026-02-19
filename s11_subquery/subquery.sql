
/* 2017年12月に商品を購入していないユーザ一覧 ユーザーID, 名字, email */
SELECT
    id,
    last_name,
    email
FROM
    users
WHERE
    id NOT IN (
        SELECT
            user_id
        FROM
            orders
        WHERE
            order_time >= '2017-12-01' AND order_time < '2018-01-01'
    )


/* 2017年12月に商品を購入したユーザ一覧 ユーザーID, 名字, email */
SELECT
    u.id,
    u.last_name,
    u.email
FROM
    users u
WHERE
    u.id IN (
        SELECT
            user_id
        FROM
            orders
        WHERE
            order_time >= '2017-12-01' AND order_time < '2018-01-01'
    )

/* 全商品の平均単価よりも、単価が高い商品の一覧 */

SELECT
    products.name,
    products.price,
    products.id
FROM
    products
WHERE
    price > (
        SELECT
            avg(price)
        FROM
            products
    )
ORDER BY
    price DESC, id ASC;
