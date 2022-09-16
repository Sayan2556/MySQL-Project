-- create table as shippers data where all the shippers data will be saved
create table shipper_data(s_id int primary key,p_id int,product varchar(100),s_address varchar(100));

-- insert values inside the shippers data table
insert into shipper_data values
(321,11,"Boat wireless headset","new delhi,india"),
(322,12,"Scrum blue matters","haryiana,gujart"),
(323,13,"SPONG-BOB BEAN BAG-L","banglore,tamil nadu"),
(324,14,"TUBLESS RIM(RE-350)","kolkata hub,west bengal"),
(325,15,"IPHONE-13 PRO-64GB","Siliguri,india"),
(326,16,"STEELBIRD-PRO HELMET(FF)","new delhi,india"),
(327,17,"TENDA ROUTER-150MBPS","new delhi,india"),
(328,18,"RE-SUMMER GLOVES","Mumbai,India"),
(329,19,"MARVEL AVENGERS PC GAME","new delhi,india"),
(330,20,"(LAPTOP)DELL INSPRION 4GB-1TB","Banglore,india"),
(331,21,"SAMSUNG GALAXY TAB-MAX","new delhi,india"),
(332,22,"NOISE COLORFIT PRO","Banglore,india");

-- display the table
select * from shipper_data;