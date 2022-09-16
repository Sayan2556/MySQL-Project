-- create a table from shipper side to see customers order details
create table shipping_status(s_id int,p_id int,c_id int primary key,c_name varchar(100),order_status varchar(100));
-- insert values inside the table
insert into shipping_status values
(321,11,1101,"Suraj dhanwar","shipped"),
(322,12,1102,"rahul nigam","shipped"),
(323,13,1103,"krishika sarkar","processing"),
(324,14,1104,"Mr M Dhar","shipped"),
(325,15,1105,"arjun thakur singh","shipped"),
(326,16,1106,"akrtiti thakur","out of stock"),
(327,17,1107,"somali das","shipped"),
(328,18,1108,"Sayan acharya","shipped"),
(329,19,1109,"Supratim Sarkar","processing"),
(330,20,1110,"Somdeb Chakraborty","shipped"),
(331,21,1111,"Sujan Kumar chaubey","returned"),
(332,22,1112,"prithis kumar","shipped");

-- display the tables datas
select * from shipping_status;












