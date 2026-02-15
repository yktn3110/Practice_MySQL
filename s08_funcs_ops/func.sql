use mydb;


/*` functions and operators */
SELECT 1 + 2;
SELECT 1 - 2;
SELECT 1 * 2;
SELECT 10 / 3;
SELECT 1 % 2;
SELECT 1 + 2 * 3;
SELECT (1 + 2) * 3;


/* null */
SELECT 1 + NULL;
SELECT 1 - NULL;
SELECT 1 * NULL;
SELECT 1 / NULL;
SELECT 1 % NULL;


/* abs */
SELECT ABS(-1);

/* round */
SELECT ROUND(1.2345, 2);
SELECT ROUND(1.2345, 3);
SELECT id, name, ROUND(price*1.1, 0) AS price_with_tax FROM products;


/* char concat */
SELECT CONCAT(last_name, ' ', first_name) AS full_name FROM users;


/* practice */
select CONCAT(last_name, 'さん'), email from users WHERE gender = 2;


/* data */
select CURRENT_DATE();
select CURRENT_TIME();
select CURRENT_TIMESTAMP();

SELECT CURRENT_DATE() - INTERVAL 3 DAY;
SELECT CURRENT_TIMESTAMP() + INTERVAL 6 HOUR;

SELECT * from orders WHERE EXTRACT(YEAR_MONTH FROM order_time) = 201701;
SELECT * from orders WHERE EXTRACT(YEAR FROM order_time) = 2017;
SELECT * from orders WHERE EXTRACT(MONTH FROM order_time) = 01;
