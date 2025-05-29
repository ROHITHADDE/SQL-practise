show databases;

use nit;

CREATE TABLE CUSTOMERS( 
       ID   INT              NOT NULL, 
       NAME VARCHAR (20)     NOT NULL, 
       AGE  INT              NOT NULL, 
       ADDRESS  CHAR (25) , 
       SALARY   DECIMAL (18, 2),        
       PRIMARY KEY (ID) 
); 
desc customers;

insert into customers(id,name,age,address,salary) values 
 (101,'revanth',21,'crpalli',800000),
 (102,'saketh',22,'jayashankar',100000),
 (103,'nagaraju',21,'sangam',1100000),
 (104,'rohith',22,'pidisilla',1200000),
 (105,'ramakrishna',23,'mogulapally',850000),
 (106,'vivek',22,'reddlavada',150000),
  (107,'rajkumar',23,'tammadapalli',130000);
  
SELECT * FROM customers;

select id from customers where salary > 130000;

select name from customers where age=22 and salary> 90000;

alter table customers add phone int;

SET SQL_SAFE_UPDATES = 0;


update  customers set phone= 6300314582;

update customers set phone = 6309730645 where id = 102;

ALTER TABLE customers MODIFY phone BIGINT;

update customers set phone = 9989848146 where id = 103;

update customers set phone = 9381868348 where id = 104;

update customers set phone = 6301680368 where id = 105;

update customers set phone = 8247553532 where id = 106;

update customers set phone = 9346311218 where id = 107;

select * from customers;

select * from customers where address like '_a%';

select * from customers where address like 'a%_';

select * from customers where age in (21,23);

select * from customers where age between 21 and 22 ;

select * from customers where name like '_a%' and salary > 100000;

SELECT * FROM CUSTOMERS  
WHERE AGE > ALL (SELECT AGE FROM CUSTOMERS WHERE SALARY > 10000); 




