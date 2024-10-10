CREATE DATABASE SALES
USE SALES
CREATE TABLE ORDERS( order_id int PRIMARY KEY,
Customer_name varchar(15) NOT NULL UNIQUE,
product_category varchar(20) NOT NULL,
ordered_item varchar(20) UNIQUE,
contact_no varchar(10) UNIQUE )
ALTER TABLE ORDERS ADD COLUMN ORDER_QUANTITY INT NOT NULL 
RENAME TABLE ORDERS TO SALES_ORDERS 
insert into sales_orders values('2','liya','electronics','phone','1234222200','3')
insert into sales_orders values('3','saniya','electronics','lap','1234332200','4')
insert into sales_orders values('4','arunima','electronics','fridge','1234222290','5')
insert into sales_orders values('5','abhi','electronics','iron box','1234444000','6')
insert into sales_orders values('6','anagha','electronics','washing machine','1237895000','7')
insert into sales_orders values('7','aliya','electronics','tv','1234299990','8')
insert into sales_orders values('8','diya','electronics','electrical clock','1234547200','9')
insert into sales_orders values('9','linta','electronics','speaker','1234222288','10')
insert into sales_orders values('10','mariya','electronics','light','1234225500','11')
select customer_name,ordered_item FROM sales_orders
update sales_orders set product_category = 'electronics' where order_id = 5;
drop table sales_orders;
