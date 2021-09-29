--droping tables--
DROP TABLE ART_STOCK CASCADE CONSTRAINTS;
DROP TABLE ARTIEST_INFO CASCADE CONSTRAINTS;
DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
DROP TABLE ORDERS CASCADE CONSTRAINTS;
DROP TABLE PAYMENT_SERVICE CASCADE CONSTRAINTS;
DROP TABLE EXIBITION CASCADE CONSTRAINTS;

--creating tables--

CREATE TABLE ART_STOCK
(
ART_NAME 	varchar(25),
SL_NO 		varchar(20) NOT NULL PRIMARY KEY,
ARTIEST_NAME 	varchar(25),
ART_TYPE 	varchar(20),
DATE_OF_MAKING 	date,
PRICE 		number
);

CREATE TABLE ARTIEST_INFO
(
ARTIEST_NAME 	varchar(25),
ART_SL_NO 	varchar(20),
P_NO 		varchar(20),
EMAIL 		varchar(20),
COUNTRY 	varchar(20),
CONSTRAINT FK_ARTSLN FOREIGN KEY(ART_SL_NO) REFERENCES ART_STOCK(SL_NO)
);

CREATE TABLE CUSTOMER
(
ID 			varchar(20) NOT NULL PRIMARY KEY,
CUSTOMER_NAME 		varchar(25),
CUSTOMER_P_NO 		varchar(25),
PHONE_NO 		number,
PREFERENCE_OF_ART 	varchar(25),
CUSTOMER_ADDRESS 	varchar(100),
CUSTOMER_COUNTRY	varchar(25)
);

CREATE TABLE ORDERS 
(
SlNO 		varchar(20),
CUSTOMER_ID 	varchar(25),
ORDER_DATE 	date,
SHIPPING_DATE 	date,
CONSTRAINT FK_CUSTOMER_ID FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(ID)
);

CREATE TABLE PAYMENT_SERVICE
(
PRODUCT_SL_NO 	varchar(25),
CUSTOMER_ID	varchar(25),
AMOUNT 		number,
CONSTRAINT FK_CUSTOMERID FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(ID)
);

CREATE TABLE EXIBITION
(
ART_SL_NO varchar(25),
EXHIBITION_PLACE varchar(30),
EXHIBITION_DATE date,
CONSTRAINT FK_ARTSLNO FOREIGN KEY(ART_SL_NO) REFERENCES ART_STOCK(SL_NO)
);

--insert values in art_stock--

insert into art_stock values('The Mona Lisa','mona002','Leonerdo Da Vinci','Portrait','10-jan-1517',200000);
insert into art_stock values('The Weeping Woman','tww01','Pablo Picasso','Cubism','26-oct-1937',100000);
insert into art_stock values('Composition V','comp05','Wassily Kandinsky','Abstract','12-june-1911',80000);
insert into art_stock values('The Starry Night','str01','Vincent van Gogh','Mordern Art','10-june-1889',200000);
insert into art_stock values('Monpura 70','mon70','Zaynul Abedin','Realism','04-jan-1974',90000);
insert into art_stock values('The Three Faces','ttf01','Zaynul Abedin','Mordern Art','26-July-1968',100000);
insert into art_stock values('Scarlet Peach','sp03','Kiyokata Kaburagi','Bijinga','28-Aug-1909',40000);
insert into art_stock values('Improvisation 10','iv10','Wassily Kandinsky','Abstract','14-Nov-1910',20000);
insert into art_stock values('Creation of Adam','coa1','Michelangelo','Cristian Art','28-Jan-1512',140000);
insert into art_stock values('Virgin And Child','vac10','Elisabetta Sirani Bologna','Cristian Art','14-jan-1665',100000);

--insert values in artiest info--

insert into artiest_info values('Leonerdo Da Vinci','mona002','no passport no','no emailid','Italy');
insert into artiest_info values('Pablo Picasso','tww01','no passport no','no emailid','Spain');
insert into artiest_info values('Wassily Kandinsky','comp05','no passport no','no emailid','Russia');
insert into artiest_info values('Vincent van Gogh','str01','no passport no','no emailid','Netherlands');
insert into artiest_info values('Zaynul Abedin','mon70','no passport no','no emailid','Bangladesh');
insert into artiest_info values('Zaynul Abedin','ttf01','no passport no','no emailid','Bangladesh');
insert into artiest_info values('Kiyokata Kaburagi','sp03','no passport no','no emailid','Japan');
insert into artiest_info values('Wassily Kandinsky','iv10','no passport no','no emailid','Russia');
insert into artiest_info values('Michelangelo','coa1','no passport no','no emailid','Italy');
insert into artiest_info values('Elisabetta Sirani Bologna','vac10','no passport no','no emailid','Italy');

--insert values in customer--

insert into customer values('C01','Mr.Arif Hossain','BD11121314',01724777840,'Abstract','Gulshan 1','Bangladesh');
insert into customer values('C02','Mr.Fzle Rabbi','BD22345289',01814888329,'Unknown','Mirpur 2','Bangladesh');
insert into customer values('C03','Anjali Roy','BD45139002',01724878946,'Abstract','Dhanmondi 27','Bangladesh');
insert into customer values('C04','Khorshed Alam','BD22375894',01714879234,'Mordern Art','Gulshan 2','Bangladesh');
insert into customer values('C05','Mithun','BD12311314',01754543439,'Abstract','Gulshan 2','Bangladesh');
insert into customer values('C06','Ahsan Labib','BD87456932',01987456103,'Abstract','Muhammadpur','Bangladesh');
insert into customer values('C07','Ashikur Rahman','BD51239874',01645683429,'Mordern Art','Mirpur 10','Bangladesh');
insert into customer values('C08','Fabiha Anber','BD54983023',01723298561,'Ancient Art','Baridhara','Bangladesh');
insert into customer values('C09','Shafiur Rahman','BD25562315',01685690132,'Mordern Art','Uttara','Bangladesh');
insert into customer values('C010','Saiful Ahmmed','BD32486791',01995643789,'Abstract','Rampura','Bangladesh');

--insert values in orders--

insert into orders values('mona002','C01','28-August-2021','01-September-2021');
insert into orders values('tww01','C02','28-August-2021','01-September-2021');
insert into orders values('comp05','C03','28-August-2021','02-September-2021');
insert into orders values('str01','C04','02-September-2021','08-September-2021');
insert into orders values('mon70','C05','02-September-2021','08-September-2021');
insert into orders values('ttf01','C06','28-August-2021','02-September-2021');
insert into orders values('sp03','C07','28-August-2021','02-September-2021');
insert into orders values('iv10','C08','02-September-2021','08-September-2021');
insert into orders values('coa1','C09','02-September-2021','08-September-2021');
insert into orders values('vac10','C010','02-September-2021','08-September-2021');

--insert values in payment service--

insert into payment_service values('mona002','C01',200000);
insert into payment_service values('tww01','C02',100000);
insert into payment_service values('comp05','C03',80000);
insert into payment_service values('str01','C04',200000);
insert into payment_service values('mon70','C05',90000);
insert into payment_service values('ttf01','C06',100000);
insert into payment_service values('sp03','C07',40000);
insert into payment_service values('iv10','C08',20000);
insert into payment_service values('coa1','C09',140000);
insert into payment_service values('vac10','C010',100000);

--insert values in exibition--

insert into exibition values('mona002','Gulshan Audetorium','28-August-2021');
insert into exibition values('tww01','Gulshan Audetorium','28-August-2021');
insert into exibition values('comp05','Gulshan Audetorium','28-August-2021');
insert into exibition values('str01','Dhanmondi Audetorium','02-September-2021');
insert into exibition values('mon70','Dhanmondi Audetorium','02-September-2021');
insert into exibition values('ttf01','Gulshan Audetorium','28-August-2021');
insert into exibition values('sp03','Gulshan Audetorium','28-August-2021');
insert into exibition values('iv10','Dhanmondi Audetorium','02-September-2021');
insert into exibition values('sp03','Dhanmondi Audetorium','02-September-2021');
insert into exibition values('iv10','Dhanmondi Audetorium','02-September-2021');

--describe tables--
describe art_stock;

-- see the all values in table--
select* from customer;

-- use of normal SELECT command--
select customer_name,customer_address,customer_country from customer;

-- use of distinct--
select distinct country from artiest_info;

-- use of WHERE command--
select artiest_name from artiest_info where art_sl_no ='mona002';

--use of WHERE command --
select artiest_name,art_sl_no from artiest_info where country='Bangladesh';

--use of AND command--
select id,customer_name from customer where customer_address='Uttara' and customer_country='Bangladesh';

--use of ORDER BY command--
select * from artiest_info order by country;

--use of AVG to get the average price of art stock-- 
select  avg(price) from art_stock;

--use of BETWEEN command to get the artstock where price is between 40000 and 100000--
select * from art_stock where price between 40000 and 100000;

--use of INNER JOIN --
select customer.id,customer.customer_name,orders.order_date from customer inner join orders on orders.customer_id=customer.id;

-- use of LEFT JOIN to join 2 tables--
select customer.customer_name, orders.customer_id,orders.shipping_date
from customer left join orders on customer.id = orders.customer_id order by customer.customer_name;

-- use of INNER JOIN,JOIN,FULL OUTER JOIN to join 4 tables--
select art_stock.art_name, customer.customer_name, orders.customer_id,payment_service.amount
from art_stock inner join orders on art_stock.sl_no= orders.slno 
join customer on customer.id=orders.customer_id full outer join payment_service on payment_service.customer_id=customer.id order by customer.customer_name;

--use of GROUP BY command to find out which artiest belong the same country--
select count(artiest_name), country
from artiest_info
group by Country;

--use of HAVING command to get the list of artiest from same country where artiest from single country is excluded--
select count(artiest_name), Country
from  artiest_info
group by country
having count(artiest_name)>1
order by count(artiest_name);


select exibition.exhibition_date,exibition.exhibition_place,art_stock.art_name from exibition full outer join art_stock on exibition.art_sl_no=art_stock.sl_no 
where exhibition_date='02-sep-2021'





