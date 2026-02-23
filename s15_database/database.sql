
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

