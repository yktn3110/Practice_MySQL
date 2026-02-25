
/* add database */
SHOW DATABASES;
CREATE DATABASE book_store;
SHOW DATABASES;

/* add table */
use book_store;
show tables;

create table books(
    id int not null AUTO_INCREMENT PRIMARY KEY,
    title varchar(255) not null);
show tables;
show columns from books;


/* add columns */
use book_store;
show columns from books;
alter table books add price int after title;
show columns from books;

/* change column name */
show columns from books;
alter table books change price unit_price int;
show columns from books;

/* delete column */
alter table books drop column unit_price;
show columns from books;

/* delete table */
show tables;
drop table books;
show tables;

/* delete database */
show DATABASES;
drop database book_store;
show DATABASES;
