create database pintu;
use pintu;
CREATE TABLE customer
   (
       custid VARCHAR(6) PRIMARY KEY,
       fname VARCHAR(30),
       mname VARCHAR(30),
       ltname VARCHAR(30),
       city VARCHAR(15),
       mobileno VARCHAR(10),
       occupation VARCHAR(10),
       dob DATE
       
   );
insert INTO customer values
('C00001','Ramesh','Chandra','Sharma','Delhi','9543198345','Service','1976-12-06'),
('C00002','Avinash','Sunder','Minha','Delhi','9876532109','Service','1974-10-16'),
('C00003','Rahul',null,'Rastogi','Delhi','9765178901','Student','1981-09-26'),
('C00004','Parul',null,'Gandhi','Delhi','9876532109','Housewife','1976-11-03'),
('C00005','Naveen','Chandra','Aedekar','Mumbai','8976523190','Service','1976-09-19'),
('C00006','Chitresh',null,'Barwe','Mumbai','7651298321','Student','1992-11-06'),
('C00007','Amit','Kumar','Borkar','Mumbai','9875189761','Student','1981-09-06'),
('C00008','Nisha',null,'Damle','Mumbai','7954198761','Service','1975-12-03'),
('C00009','Abhishek',null,'Dutta','Kolkata','9856198761','Service','1973-05-22'),
('C00010','Shankar',null,'Nair','Chennai','8765489076','Service','1976-07-12');


SELECT*FROM customer;

--update value--
update customer
set fname= 'Kamlesh',mname='jharkhandi',dob='2022-2-12'
where custid='C00002';

update customer
set ltname='Mandal',city='Godda'
where custid='C00001';

update customer
set occupation='student'
where custid='C00001';
SELECT*from customer;
--ALTER--
alter table customer
add column pincode int;

alter table customer
add COLUMN university VARCHAR(30);

ALTER table customer
drop COLUMN university;

alter table customer
add COLUMN gender VARCHAR(10) DEFAULT 'Male';

alter table customer
MODIFY city char(40);

alter table customer
drop column gender;





SELECT*from customer

update customer
set pincode=814156
where custid='C00001';

SELECT *FROM customer;

alter Table customer
drop column city;

alter table customer
alter column ;

alter table customer
add column city VARCHAR(40);


--delete--

delete from customer
where custid='C00001';

DELETE from customer
WHERE fname='naveen';

delete from customer
where fname='avinash';

DELETE from customer
where city= 'delhi';

SELECT *FROM customer;

--truncate--


--WHERE Clause--
select city from customer
where fname='naveen';

SELECT fname from customer
where custid='C00002';

--Operators In SQL--
SELECT fname from customer
LIMIT 2;

--ORDER BY Clause--
select fname from customer
order by fname asc;

--SELECT & WHERE CLAUSE--
CREATE TABLE classroom
(
rollno int PRIMARY KEY,
name varchar(50) NOT NULL,
house char(12) NOT NULL,
grade char(1)
);

insert into classroom VALUES
(101,'rohan','bihar','A'),
(102,'AJAY','chandigarh','C'),
(103,'soham','agara','B'),
(104,'rauank','bihar','A'),
(105,'rohit','madhubani','A'),
(106,'abhishek','lucknow','B'),
(107,'ranjeet','ranchi','A'),
(108,'pawan','bihar','B'),
(109,'muanaf','kolkata','C'),
(110,'utkaesh','agarar','C');

SELECT*from classroom;
DROP TABLE classroom;

alter table classroom
RENAME COLUMN house to city;
ALTER TABLE classroom
RENAME COLUMN grade to collage_grade;

alter TABLE classroom
MODIFY city VARCHAR(40);


--game start from here--
select DISTINCT rollno from classroom;
select DISTINCT house from classroom;
SELECT name,grade,city from classroom
where grade='A';

select city,name from classroom
where city='bihar'

select grade,name,city from classroom
where grade='B' and city='bihar';

SELECT city, name,grade from classroom
where city='ranchi';

--limit--
select*from classroom
LIMIT 4;

--ORDER BY Clause--
select grade,city,name from classroom
order by city ASC;

select city,name from classroom
order by city DESC;


--FUNCTION--
CREATE TABLE Test
   (
       custid VARCHAR(6) PRIMARY KEY,
       First_name VARCHAR(30),
       mname VARCHAR(30),
       ltname VARCHAR(30),
       city VARCHAR(15),
       mobileno VARCHAR(10),
       occupation VARCHAR(10),
       dob DATE
       
   );
--DROP TABLE customer;--
--SELECT*FROM customer;--
insert INTO Test values
('C00001','  Ramesh','Chandra','Sharma','Delhi','9543198345','Service','1976-12-06'),
('C00002','Avinash  ','Sunder','Minha','Delhi','9876532109','Service','1974-10-16'),
('C00003','Rahul',null,'Rastogi','Delhi','9765178901','Student','1981-09-26'),
('C00004','Parul  ',null,'Gandhi','Delhi','9876532109','Housewife','1976-11-03'),
('C00005','Naveen','Chandra','Aedekar','Mumbai','8976523190','Service','1976-09-19'),
('C00006','  Chitresh',null,'Barwe','Mumbai','7651298321','Student','1992-11-06'),
('C00007','Amit','Kumar','Borkar','Mumbai','9875189761','Student','1981-09-06'),
('C00008','Nisha  ',null,'Damle','Mumbai','7954198761','Service','1975-12-03'),
('C00009','Abhishek',null,'Dutta','Kolkata','9856198761','Service','1973-05-22'),
('C00010','  Shankar',null,'Nair','Chennai','8765489076','Service','1976-07-12');

drop TABLE Test;
select *from Test;
--STRING FUNCTION--
SELECT UPPER(fname), fname FROM Test;
SELECT LENGTH(fname), fname from Test;
SELECT SUBSTRING(fname, 1,4), fname from Test;
SELECT CONCAT(fname,ltname),fname, ltname from Test;
SELECT REPLACE(fname,'Ramesh','Rishi'), fname from Test;
SELECT trim(First_name) as fname,First_name from Test;


SELECT*from Test;

--AGGREGATE FUNCTION--
CREATE TABLE PAYMENT(
    CUSTOMER_ID INT PRIMARY KEY,
    AMOUNT BIGINT,
    MODE VARCHAR(30),
    PAYMNET_DATE DATE
);

INSERT INTO PAYMENT VALUES(101,1200,'CC','2023-11-23'),
(102,1300,'NET BANKING','2022-11-23'),
(103,1400,'CC','2013-11-23'),
(104,1500,'CC','2023-11-23'),
(105,1100,'PAYTM','2021-11-23'),
(107,1000,'NET BANKING','2020-11-23'),
(108,900,'CC','2023-12-23'),
(109,12900,'PAYTM','2022-10-23');

DROP TABLE PAYMENT;

SELECT*from PAYMENT;

SELECT COUNT(*)FROM PAYMENT;
SELECT SUM(AMOUNT)FROM PAYMENT;
SELECT MAX(AMOUNT) FROM PAYMENT;
SELECT MIN(AMOUNT)FROM PAYMENT;
SELECT AVG(AMOUNT)FROM PAYMENT
SELECT ROUND(AVG(AMOUNT),2) FROM PAYMENT;

--GROUP BY & HAVING CLAUSE--
SELECT MODE, SUM(AMOUNT) AS TOTAL
FROM PAYMENT
GROUP BY MODE
ORDER BY TOTAL ASC;

SELECT MODE, COUNT(AMOUNT) AS TOTAL_PAYMENT
FROM PAYMENT
GROUP BY MODE
ORDER BY TOTAL_PAYMENT DESC;

SELECT MODE, AVG(AMOUNT) AS TAB
FROM PAYMENT
GROUP BY MODE
ORDER BY TAB ASC;

SELECT MODE, ROUND(AVG(AMOUNT),2) AS T1
FROM PAYMENT
GROUP BY MODE
ORDER BY T1 ASC;

SELECT*FROM PAYMENT;

--HAVING CLAUSE--
SELECT MODE, COUNT(AMOUNT)AS TOTAL1
FROM PAYMENT
GROUP BY MODE
HAVING COUNT(AMOUNT)>=3
ORDER BY TOTAL1 DESC;

SELECT MODE, MIN(AMOUNT) AS TEM
FROM PAYMENT
GROUP BY MODE
HAVING MIN(AMOUNT)>4
ORDER BY TEM DESC;

--JOIN--
--INNER JOIN--
 
CREATE TABLE CUSTOMERS(
    CUSTOMER_ID BIGINT PRIMARY KEY,
    FIRST_NAME VARCHAR(30),
    LAST_NAME VARCHAR(20),
    ADDRESS_ID BIGINT
);

INSERT INTO CUSTOMERS VALUES
(101,'SAM','KHAN',1),
(103,'YAM','RAI',4),
(104,'SAYA','LALA',3),
(138,'JOYA','ISSU',2),
(107,'RANVEER','KAPOOR',5);
TRUNCATE TABLE CUSTOMER;

SELECT*FROM CUSTOMERS;
SELECT*FROM PAYMENT;
--INNER JOINS--
SELECT*
FROM CUSTOMERS AS C
INNER JOIN PAYMENT AS P
ON C.CUSTOMER_ID=P.CUSTOMER_ID;

SELECT C.FIRST_NAME,P.AMOUNT, P.MODE
FROM CUSTOMERS AS C
INNER JOIN PAYMENT AS P
ON C.CUSTOMER_ID=P.CUSTOMER_ID;

--LEFT JOIN--
SELECT*
FROM CUSTOMER AS C
LEFT JOIN  PAYMENT AS P
ON C.CUSTOMER_ID=P.CUSTOMER_ID;

SELECT C.FIRST_NAME, P.AMOUNT,P.MODE
FROM CUSTOMER AS C
LEFT JOIN  PAYMENT AS P
ON C.CUSTOMER_ID=P.CUSTOMER_ID;

--RIGHT JOINS--
SELECT*
FROM CUSTOMER AS C
RIGHT JOIN  PAYMENT AS P
ON C.CUSTOMER_ID=P.CUSTOMER_ID;

SELECT C.FIRST_NAME,P.AMOUNT,P.MODE
FROM CUSTOMER AS C
LEFT JOIN  PAYMENT AS P
ON C.CUSTOMER_ID=P.CUSTOMER_ID;

--FULL JOINS--
SELECT C.FIRST_NAME, P.AMOUNT,P.MODE
FROM CUSTOMER AS C
LEFT JOIN  PAYMENT AS P
ON C.CUSTOMER_ID=P.CUSTOMER_ID
UNION

SELECT C.FIRST_NAME,P.AMOUNT,P.MODE
FROM CUSTOMER AS C
LEFT JOIN  PAYMENT AS P
ON C.CUSTOMER_ID=P.CUSTOMER_ID;

--WINDOW FUNCTION--
--AGGREGATE FUNCTION--


CREATE TABLE WIN(
    NEW_ID INT,
    NEW_CAT VARCHAR(50)
);

INSERT INTO WIN VALUES
(100,'BYJUS'),
(200,'PW'),
(500,'TESTBOOK'),
(700,'BYJUS'),
(200,'BYJUS'),
(300,'TESTBOOK'),
(500,'PW');

SELECT *FROM WIN;
SELECT NEW_ID,NEW_CAT,
SUM(NEW_ID) OVER(PARTITION BY NEW_CAT ORDER BY NEW_ID) AS "TOTAL",
AVG(NEW_ID) OVER(PARTITION BY NEW_CAT ORDER BY NEW_ID) AS "AVG",
COUNT(NEW_ID) OVER(PARTITION BY NEW_CAT ORDER BY NEW_ID) AS "COUNT",
MIN(NEW_ID) OVER(PARTITION BY NEW_CAT ORDER BY NEW_ID) AS "MIN",
MAX(NEW_ID) OVER(PARTITION BY NEW_CAT ORDER BY NEW_ID) AS "MAX"

FROM WIN;

--RANKING FUNCTION--

SELECT NEW_ID,NEW_CAT,
SUM(NEW_ID) OVER(ORDER BY NEW_ID ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "TOTAL",
AVG(NEW_ID) OVER(ORDER BY NEW_ID ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "AVG",
COUNT(NEW_ID) OVER(ORDER BY NEW_ID ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "COUNT",
MIN(NEW_ID) OVER(ORDER BY NEW_ID ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "MIN",
MAX(NEW_ID) OVER(ORDER BY NEW_ID ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "MAX"

FROM WIN;

--Ranking--
SELECT NEW_ID,
ROW_NUMBER()OVER(ORDER BY NEW_ID) AS "ROW_NUMBER",
RANK()OVER(ORDER BY NEW_ID) AS "RANK",
DENSE_RANK()OVER(ORDER BY NEW_ID) AS "DENSE_RANK",
PERCENT_RANK()OVER(ORDER BY NEW_ID) AS "PERCENT_RANK"
FROM WIN;

--Value/Analytic--
SELECT NEW_ID,
FIRST_VALUE(NEW_ID)OVER(ORDER BY NEW_ID) AS "FIRST_VALUE",
LAST_VALUE(NEW_ID)OVER(ORDER BY NEW_ID) AS "LAST_VALLUE",
LEAD(NEW_ID)OVER(ORDER BY NEW_ID) AS "LEAD",
LAG(NEW_ID)OVER(ORDER BY NEW_ID) AS "LAG"
FROM WIN;

--CASE EXPRESSION--
CREATE TABLE TEST2(
    CUSTOMER_ID BIGINT,
    AMOUNT INT,
    MODE VARCHAR(10),
    PAYMENT_DATE DATE

);

INSERT INTO TEST2 VALUES
(101,40000,'CC','2023-10-27'),
(102,20000,'PAYTM','2023-2-20'),
(103,50000,'CASH','2003-1-27'),
(104,40000,'CC','2023-12-07'),
(105,70000,'PAYTM','2023-09-17'),
(106,40000,'CC','2023-06-05'),
(107,90000,'GOOGLEPAY','2013-12-30');

SELECT*FROM TEST2;

SELECT CUSTOMER_ID, AMOUNT,
CASE 
    WHEN AMOUNT >70000 THEN 'EXPENSIVE PRODUCT'
    WHEN AMOUNT =50000 THEN 'MODERATE PRODUCT' 
    ELSE  'INEXPENSIVE PRODUCT'
END AS PRODUCT_STATUS
FROM TEST2;
