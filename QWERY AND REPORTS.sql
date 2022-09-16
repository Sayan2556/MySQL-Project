-- SQL QWERY 1:-    REPORT FROM CUSTOMER WHERE ORDER STATUS = SHIPPED(CUSTOMET ID,ORDER STATUS,DELIVERY DATE)
select c_id,order_status,delivery_date from customer_order_status where order_status="Shipped";
-- SQL QWERY 2:-     REPORT WHERE EACH CUSTOMER CAN TRACK THERE ORDER DETAILS AND PRICE DETAILS
select c.c_id,c.c_name,p.p_id,p.order_id,co.order_status from 
customers_data c
join
purchase p
on c.c_id = p.c_id
join
customer_order_status co
on c.c_id = co.c_id;
-- SQL QWERY 3:-    PAYMENT REPORT FROM CUSTOMER SIDE
select c.c_id,c.c_name,p.product,p.price,p.Final_price from 
customers_data c
join
purchase p
on c.c_id = p.c_id;
-- SQL QWERY 4:-    PAYMENT MODE OF CUSTOMER REPORT FROM SHIPPER SIDE
select co.p_id,co.c_id,s.s_id,p.payment_mode from customer_order_status co
join
shipper_data s
on co.p_id = s.p_id
join
purchase p
on 
co.c_id = p.c_id;
-- SQL QWERY 5:-    REPORT FROM SHIPPER SIDE ABOUT SHIPPING DETAILS
select sd.s_id,ss.p_id,sd.product,ss.order_status from
shipper_data sd
join 
shipping_status ss
on sd.p_id = ss.p_id;

-- SQL QWERY 6:-    PRODUCT PURCHASE REPORT BY CUSTOMER SIDE
select c.c_id,p.p_id,p.product from 
customers_data c 
join
purchase p
on c.c_id=p.c_id;

-- SQL QWERY 7:-    SEARCHING FOR PRODUCT PRICE >= 10000 CLIENT SIDE

select * from purchase where price >= 10000;

-- SQL QWERY 8:-    SEARCHING FOR PRODUCT DISCOUNT <=15% USING ORDER BY

select * from purchase where discount <= "15%"
order by discount;

-- SQL QWERY 9:-    DETAILS OF INVOICE REPORT

select * from customer_invoice;

-- SQL QWERY 10:-    SEACRHING STATUS OF PRODUCTS APPLIYING INVOICE NO

select 
ci.invoice_no,ci.invoice_date,ss.order_status
from 
customer_invoice ci
join
shipping_status ss
on ci.c_id = ss.c_id
order by invoice_no;

-- SQL QWERY 11:-    SEARCH OF PRODUCT PRICE USING INVOICE NO
select ci.invoice_no,p.price from 
customer_invoice ci
join
purchase p
on ci.c_id = p.c_id
order by price; 

-- SQL QWERY 12:-    NEW ENTRIES OF 3 CUSTOMERS IN JULY-AUGUST
INSERT INTO customers_data VALUES (1113	,"bishu prasad",7445662144,	"Navoda bidalaya rd,Bihar,Dhanbad","bprasad2@gmail.com","13-nov-1994"),
(1114,"Rajshekar Venkateswamy",	7885411263,"chilappa lane,sawmi kant rd,kerala","rv2321@gmail.com","21-oct-1995"),
(1115,"Krishnendu BHattacharya",9609733356,"Hill cart rd,Biswadeep,Siliguri,WB","sbhattacharya92@gmail.com","15-Nov-1992");
insert into purchase values
(23,1113,"Boat wireless speaker","2100/-","05%","CASH ON DELIVERY",124,2100-5*100),
(24,1114,"Men black jeans-L","1300/-","00%","SBI-NET BANKING",125,1300-0*100),
(25,1115,"SPONG-BOB BEAN BAG-L","2156/-","03%","CASH ON DELIVERY",126,2156-3*100);
-- SQL QWERY 13:-    UPDATE VALUE INTO FINAL PRICE AT P_ID 22
UPDATE purchase set Final_price = 2299-5/100 where p_id=22;
insert into customer_order_status values
(23,124,1113,"shipped","14-july"),
(24,125,1114,"shipped","14-july"),
(25,126,1115,"processing","21-july");
insert into shipper_data values
(333,23,"Boat wireless speaker","new delhi,india"),
(334,24,"Men black jeans-L","Kolkata hub,west bengal"),
(335,26,"SPONG-BOB BEAN BAG-L","New Delhi,India");
insert into shipping_status
values
(333,23,1113,"bishu prasad","shipped"),
(334,24,1114,"Rajshekar Venkateswamy","shipped"),
(335,25,1115,"Krishnendu BHattacharya","processing");
insert into customer_invoice VALUES
(1113,333,"AK44587","2022-07-03"),
(1114,334,"BB44567","2022-07-02"),
(1115,335,"GG11223","2022-07-02");


