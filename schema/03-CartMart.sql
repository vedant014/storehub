/*
1) Import Q2 order_item and refund data into the database using the following files:                                                                                                                               
-- 08.order_items_2013_Apr-June
-- 09.order_item_refunds_2013_Apr-Jun
*/


/*
2) Next, your help is needed updating the structure of the order_items table. 
The company is going to start cross-selling products, and will want to track 
whether each item sold is the primary item (the first one put into the user’s shopping cart) 
or a cross-sold item. Add a binary column to order_items called is_primary_item. 
*/


/* 
3) Update all previous records in the order_items table, setting is_primary_item = 1 
all records. Up until now, all items sold were the primary item (cross-selling is new). 
Confirm this change has executed successfully. 
*/ 


/*
4) After adding 2 new products to the products table, Import the remainder of 2013 order_item and refund data. 
Confirm successful import. Use the product values below and these files:  
-- 10.order_items_2013_Jul-Dec
-- 11.order_item_refunds_2013_Jul-Dec
*/ 


/*
5) Your CEO would like your help making sure your database has a high degree of data integrity 
and bad data doesn’t start creeping in as more people start using the database. 
If you see any opportunities to ensure data integrity by using constrains like NON-NULL, 
add them to the relevant columns in the tables you have created . 
*/ 


/* 
6) One of the company’s board advisors is pressuring your CEO on data risks and making sure 
she has a great backup and recovery plan. She would like a report on possible risks for 
data loss and steps the company can take to mitigate these concerns. 
*/ 

use CartMart;

alter table order_items add column is_primary_item bool;

select * from order_items;
select * from order_item_refunds;
select * from products;

update order_items set is_primary_item=1 where order_item_id>0; 
insert into products values(3,'2013-12-12 09:00:00','The Birthday Sugar Panda'),(4,'2014-02-05 10:00:00','The Hudson River Mini bear');




