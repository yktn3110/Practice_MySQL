-- Active: 1771155225104@@127.0.0.1@3306@mydb
use mydb;

/* SUM */
select sum(amount) from orders where order_time >= '2017-01-01 03:43:00'; 

/* MIN */
select min(price) from products;

/* COUNT */
select count(*) from users; 

//unique access user
select * from access_logs;
select * from access_logs where request_month = '2017-01-01';
select count(distinct user_id) from access_logs where request_month = '2017-01-01';

/* groupby */
select prefecture_id, count(*) from users group by prefecture_id;

select request_month, COUNT(DISTINCT user_id) from access_logs WHERE request_month >= '2017-01-01' and request_month < '2018-01-01' GROUP BY request_month;
-- this will be error.
-- select request_month, COUNT(DISTINCT user_id) from access_logs GROUP BY request_month WHERE request_month >= '2017-01-01' and request_month < '2018-01-01';


/* having */
select request_month, COUNT(DISTINCT user_id) from access_logs WHERE request_month >= '2017-01-01' and request_month < '2018-01-01' GROUP BY request_month HAVING COUNT(DISTINCT user_id) >=630;

/* practice */
SELECT * FROM access_logs;
SELECT * FROM access_logs WHERE request_month < '2017-07-01' and request_month >= '2017-01-01';
SELECT request_month, COUNT(*) FROM access_logs WHERE request_month < '2017-07-01' and request_month >= '2017-01-01' GROUP BY request_month;
SELECT request_month, COUNT(*) FROM access_logs WHERE request_month < '2017-07-01' and request_month >= '2017-01-01' GROUP BY request_month HAVING count(*) >= 1000;

