-- create table customer_order_status
create table customer_order_status(p_id int primary key,o_id int,c_id int,order_status varchar(100),estimate_date varchar(100));

-- insert values inside customer_order_status table
insert into customer_order_status values
(11,112,1101,"shipped","NA"),
(12,113,1102,"shipped","NA"),
(13,114,1103,"processing","12-june"),
(14,115,1104,"shipped","NA"),
(15,116,1105,"shipped","NA"),
(16,117,1106,"out of stock","NA"),
(17,118,1107,"shipped","NA"),
(18,119,1108,"shipped","NA"),
(19,120,1109,"processing","21-june"),
(20,121,1110,"shipped","NA"),
(21,122,1111,"returned","25-july"),
(22,123,1112,"shipped","NA");

-- add a new column name as delivery_date
alter table customer_order_status add column(delivery_date varchar(100));
-- add value inside customer_order_status
update customer_order_status set delivery_date="26th june" where p_id =11;
update customer_order_status set delivery_date="27th june" where p_id =12;
update customer_order_status set delivery_date="29th june" where p_id =13;
update customer_order_status set delivery_date="13th june" where p_id =14;
update customer_order_status set delivery_date="26th june" where p_id =15;
update customer_order_status set delivery_date="will be available after in stock" where p_id =16;
update customer_order_status set delivery_date="26th june" where p_id =17;
update customer_order_status set delivery_date="21st june" where p_id =18;
update customer_order_status set delivery_date="21st june" where p_id =19;
update customer_order_status set delivery_date="27th june" where p_id =20;
update customer_order_status set delivery_date="28th july" where p_id =21;
update customer_order_status set delivery_date="22nd june" where p_id =22;
