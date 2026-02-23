/* insert data into a table */
insert INTO products (name, price) VALUES ('新商品', 1000);
select * from products where name = '新商品';

/* insert data skipping column names */
insert INTO products VALUES (1002, '新商品B', 2000); -- insert data with all columns data


/* insert multiple rows */
insert INTO products (name, price) VALUES 
('新商品C', 3000),
('新商品D', 4000),
('新商品E', 5000);

/* update all products price */
SELECT * from products;
update products set price = price * 1.1;
SELECT * from products;


/* change product name of product id 3 */
select * FROM products where id = 3;
update products set name = 'SQL入門' where id = 3; -- update with condition.
select * FROM products where id = 3;


/* change price of products that are sold more than 10. */
UPDATE products products set price = price * 1.05
WHERE id IN (
    SELECT
        product_id
    FROM
        order_details
    GROUP BY
        product_id
    HAVING
        sum(product_qty) > 10
);


/* delete connection between products and categories */
SELECT * from products_categories;
DELETE FROM products_categories; -- delete all data from products_categories table
SELECT * from products_categories;

/* delete data of product id 1001 */
SELECT * from products where id = 1001;
DELETE FROM products WHERE id = 1001; -- delete data with condition.
SELECT * from products where id = 1001;

/* delete product data that has no orders */
SELECT id from products p
--use subquery to delete data
WHERE id NOT IN (
    SELECT product_id 
    FROM order_details
    GROUP BY product_id
    HAVING sum(product_qty) > 0
) 




