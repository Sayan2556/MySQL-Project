-- create table customer purchase details
create table purchase(p_id int primary key,c_id int,product varchar(100),price varchar(5000),discount varchar(100),payment_mode varchar(100),order_id int);
-- value inserting inside purchase table
insert into purchase values
(11,1101,"Boat wireless headset","1560/-","10%","UPI-1102234",112),
(12,1102,"Scrum blue matters","654/-","00%","SBI-NET BANKING",113),
(13,1103,"SPONG-BOB BEAN BAG-L","2156/-","03%","CASH ON DELIVERY",114),
(14,1104,"TUBLESS RIM(RE-350)","3500/-","10%","UPI-2236487",115),
(15,1105,"IPHONE-13 PRO-64GB","78365/-","20%","UPI-1102234",116),
(16,1106,"STEELBIRD-PRO HELMET(FF)","3564/-","07%","HDFC-ONLINE PAY",117),
(17,1107,"TENDA ROUTER-150MBPS","2350/-","10%","UPI-1124567",118),
(18,1108,"RE-SUMMER GLOVES","1500/-","00%","PAYTM UPI-114568",119),
(19,1109,"MARVEL AVENGERS PC GAME","2250/-","10%","CASH ON DELIVERY",120),
(20,1110,"(LAPTOP)DELL INSPRION 4GB-1TB","35000/-","22%","UPI-1102234",121),
(21,1111,"SAMSUNG GALAXY TAB-MAX","85000/-","25%","UPI-1102234",122),
(22,1112,"NOISE COLORFIT PRO","2299/-","05%","CASH ON DELIVERY",123);

-- ADD A COLUMN(FINAL PRICE) INSIDE PURCHASE
ALTER TABLE purchase add column (Final_price varchar(100));

-- insert values inside Final_price
-- update purchase set Final_price=1560-10/100 where p_id=11;
update purchase set Final_price="654" where p_id=12;
update purchase set Final_price=2156-3/100 where p_id=13;
update purchase set Final_price=3500-10/100 where p_id=14;
update purchase set Final_price=78365-20/100 where p_id=15;
update purchase set Final_price=3564-7/100 where p_id=16;
update purchase set Final_price=2350-10/100 where p_id=17;
update purchase set Final_price="1500" where p_id=18;
update purchase set Final_price=2250-10/100 where p_id=19;
update purchase set Final_price=35000-22/100 where p_id=20;
update purchase set Final_price= 85000-25/100 where p_id=21;
update purchase set Final_price=22990-5/100 where p_id=22;

-- display the purchase table
select * from purchase;
