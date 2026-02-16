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
