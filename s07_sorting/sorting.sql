use mydb;

/* order by */
SELECT * from products ORDER BY price DESC;
SELECT * from products ORDER BY price ASC; /* asc can be skipped */
SELECT * from products ORDER BY price DESC, id ASC;
select * from users order by birthday ASC, id ASC;
