create database salesmanreport
create table salesmanreport(salesman_id  numeric(5) primary key,    name  varchar(30) not null unique ,   city  varchar(15) not null,  commission decimal(5,2 ));
select * from salesmanreport
drop table  salesmanreport
insert into salesmanreport values(5001, 'James Hoog' ,' New York' ,  0.15)
insert into salesmanreport values(5002, 'Nail Knite ' ,'Paris ' , 0.13 )
insert into salesmanreport values(5005, 'Pit Alex  ' ,' London ' , 0.11  )
insert into salesmanreport values(5006, 'Mc Lyon   ' ,' Paris  ' ,   0.14)
insert into salesmanreport values(5007, ' Paul Adam  ' ,'Rome ' , 0.13 )
insert into salesmanreport values(5003, ' Lauson Hen' ,' San Jose  ' , 0.12 )

select name,commission from salesmanreport
select  name  ,city   from salesmanreport where city='paris'
select sum(commission ) 'sum_ofcommission',min(commission )from salesmanreport
selectselect min(commission ) from salesmanreportfrom salesmanreport
select max(commission ) from salesmanreport
select avg(commission ) from salesmanreport
--drop table  salesmanreport
             
create table Orderdetails(ORD_no numeric(5) primary key, purch_amt decimal(8,2),ord_date date, customer_id numeric(5),salesman_id numeric(5))
drop table Orderdetails
select * from Orderdetails
insert into Orderdetails values(70001 ,150.5  ,'2012-10-05'  ,3005  ,5002 )
insert into Orderdetails values(70009  , 270.65  ,    '2012-09-10' , 3001      ,   5005)
insert into Orderdetails values(70002   , 65.26   ,    '2012-10-05 ', 3002        , 5001)
insert into Orderdetails values(70004    ,   110.5 ,      '2012-08-17',  3009    ,     5003)
insert into Orderdetails values(70007     ,  948.5  ,     '2012-09-10' , 3005       ,  5002)
insert into Orderdetails values(70005      , 2400.6  ,    '2012-07-27'  ,3007      ,   5001)
insert into Orderdetails values(70008       ,5760     ,   '2012-09-10'  ,3002     ,    5001)
insert into Orderdetails values(70010   ,    1983.43   ,  '2012-10-10'  ,3004    ,     5006)
insert into Orderdetails values(70003    ,   2480.4   ,   '2012-10-10 ', 3009   ,      5003)
insert into Orderdetails values(70012     ,  250.45    ,  '2012-06-27'  ,3008  ,       5002)
insert into Orderdetails values(70011      , 75.29      , '2012-08-17'  ,3003 ,        5007)
insert into Orderdetails values(70013       ,3045.6     , '2012-04-25' ,3002 ,        5001)
select ord_date,salesman_id,ORD_no ,purch_amt from  Orderdetails
select ORD_no ,ord_date,purch_amt  from Orderdetails where salesman_id=500



create table customer(customer_id  numeric(5), cust_name varchar(30),city varchar(15), grade numeric(3), salesman_id numeric(5))
select *from  customer
drop table customer
 insert  into   customer values(    3002 ,'Nick Rimando' ,'New York' ,  100,  5001)
   insert  into   customer values  (   3007,  'Brad Davis'  ,    'New York '  ,   200 ,      5001)
  insert  into   customer values    (  3005, 'Graham Zusi'   , 'California' ,   200 ,       5002)
  insert  into   customer values     ( 3008 , 'Julian Green'  , 'London ',  300 ,       5002)
  insert  into   customer values    (  3004 , 'Fabian Johnson' , 'Paris ',        300 ,      5006)
   insert  into   customer values    ( 3009 , 'Geoff Cameron ' ,'Berlin  ',   100     ,    5003)
    insert  into   customer values   ( 3003 , 'Jozy Altidor ' , 'Moscow '   ,   200 ,       5007)
    insert  into   customer values   ( 3001 , 'Brad Guzan '   , 'London'     ,   null  ,    5005)
select customer_id , cust_name,city , grade ,salesman_id from customer where grade=200

