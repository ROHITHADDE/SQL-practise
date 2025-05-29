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

select * from customers order by salary asc;

select * from customers order by salary desc;
update customers  set salary=1100000 where id = 102;

select * from customers;

SELECT * FROM customers WHERE salary > 800000 ORDER BY salary ASC;

create table students(id int(10) primary key, name char(30), dept char(10), grade char(10), working char(20), age int(10));


insert into students (id, name,dept,grade,working,age) values 
 (501,'Dev','CSE','A','YES',23),
 (502,'Vyas','EEE','B','YES',22),
 (503,'Ram','CSD','A+','NO',21),
 (504,'David','CSE','B+','YES',22),
 (505,'Roo','MACH','c','About To Join',24);
 
 select * from students;
 
select * from students cross join customers;

select * from studets cross join customers where students.age=customers.age;

select * from students right join customers on students.id=customers.id;
 
 select * from customers left join students on customers.id=students.id;
 
 select * from customers cross join students on customers.age=students.age;
 
 SELECT * FROM students
CROSS JOIN customers
WHERE students.age = customers.age;

alter table customers add Rating int(10);

SELECT * FROM customers;

alter table customers drop Rating;