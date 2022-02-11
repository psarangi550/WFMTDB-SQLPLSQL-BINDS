CREATE TABLE CUSTOMER
( CUSTOMER_ID NUMBER,
FIRST_NAME VARCHAR2(50),
LAST_NAME VARCHAR2(50),
MIDDLE_NAME VARCHAR2(50),
ADDRESS_LINE1 VARCHAR2(80),
ADDRESS_LINE2 VARCHAR2(80),
CITY VARCHAR2(40),
COUNTRY VARCHAR2(50),
DATE_ADDED DATE,
REGION VARCHAR2(10)
);
CREATE TABLE PRODUCT
( PRODUCT_ID NUMBER,
PRODUCT_NAME VARCHAR2(100),
STANDARD_COST NUMBER(10,2),
COLOR VARCHAR2(20),
LIST_PRICE NUMBER(10,2),
PRODUCT_SIZE NUMBER(8,2),
WEIGHT NUMBER(10,2),
PRODUCT_CATEGORY VARCHAR2(20)
);
CREATE TABLE SALES
( SALES_DATE DATE,
ORDER_ID NUMBER,
PRODUCT_ID NUMBER,
CUSTOMER_ID NUMBER(5,0),
SALESPERSON_ID NUMBER(5,0),
QUANTITY NUMBER(4,0),
UNIT_PRICE NUMBER(10,2),
SALES_AMOUNT NUMBER(10,2),
TAX_AMOUNT NUMBER(10,2),
TOTAL_AMOUNT NUMBER(10,2)
);
CREATE TABLE SALES_HISTORY
( SALES_DATE DATE,
ORDER_ID NUMBER,
PRODUCT_ID NUMBER,
CUSTOMER_ID NUMBER(5,0),
SALESPERSON_ID NUMBER(5,0),
QUANTITY NUMBER(4,0),
UNIT_PRICE NUMBER(10,2),
SALES_AMOUNT NUMBER(10,2),
TAX_AMOUNT NUMBER(10,2),
TOTAL_AMOUNT NUMBER(10,2)
);
CREATE TABLE SALESPERSON
( SALESPERSON_ID NUMBER,
JOB_TITLE VARCHAR2(80),
FIRST_NAME VARCHAR2(50),
LAST_NAME VARCHAR2(50),
MIDDLE_NAME VARCHAR2(50),
ADDRESS_LINE1 VARCHAR2(80),
ADDRESS_LINE2 VARCHAR2(80),
CITY VARCHAR2(40),
COUNTRY VARCHAR2(50),
DATE_ADDED DATE
);


Insert into CUSTOMER
(CUSTOMER_ID,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,ADDRESS_LINE2,CITY,
COUNTRY,DATE_ADDED,REGION) values
(10,'JOHN','AMIRTHRAJ','T','2345 PETERDRIVE',null,'Atlanta','USA',
to_date('12-JAN-15','DD-MON-YY'),'SOUTH');
Insert into CUSTOMER
(CUSTOMER_ID,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,ADDRESS_LINE2,CITY,
COUNTRY,DATE_ADDED,REGION) values
(11,'TOM','JOSEPH','A','123SANDY DRIVE',null,'New York','USA',
to_date('12-JAN-15','DD-MON-YY'),'SOUTH');
Insert into CUSTOMER
(CUSTOMER_ID,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,ADDRESS_LINE2,CITY,
COUNTRY,DATE_ADDED,REGION) values
(12,'PETER','MANN','J','3456 GATES DRIVE',null,'Washington','USA',
to_date('13-JAN-15','DD-MON-YY'),'NORTH');
COMMIT;
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (100,'Mobile Cover',30,null,35,10,100,'Mobile');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (200,'Samsung F7100',80,'BLACK',35,6,50,'Mobile');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (105,'HTC 7800',70,'BLACK',80,6,40,'Mobile');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (106,'Microsoft Keyboard 7865',50,'BLACK',60,3,20,'Computer');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (501,'Microsoft Mouse 7863',30,'GREY',40,1,25,'Computer');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (101,'iPhone',500,'GOLD',600,6,20,'Mobile');
COMMIT;
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('01-FEB-15','DD-MON-YY'),1269,200,12,1000,20,80,1600,160,1760);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('01-JAN-15','DD-MON-YY'),1267,100,10,1000,2,20,40,4,44);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('01-JAN-15','DD-MON-YY'),1267,101,10,1000,2,30,60,6,66);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('02-JAN-15','DD-MON-YY'),1268,100,11,2000,10,30,300,30,330);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('09-FEB-15','DD-MON-YY'),1270,105,10,3000,20,70,1400,140,1540);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('09-FEB-15','DD-MON-YY'),1270,106,10,3000,10,50,500,50,550);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('09-FEB-15','DD-MON-YY'),1270,101,10,3000,10,30,300,30,330);
COMMIT;
Insert into SALES_HISTORY
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('01-JAN-15','DD-MON-YY'),1267,100,10,1000,2,20,40,4,44);
Insert into SALES_HISTORY
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('01-JAN-15','DD-MON-YY'),1267,101,10,1000,2,30,60,6,66);
Insert into SALES_HISTORY
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('07-JAN-15','DD-MON-YY'),1268,100,11,2000,10,30,300,30,330);
COMMIT;
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED)
values (1000,'South Manager','PETER','MANN','R',
'4567 ASHFORDROAD',null,'CUMMING','USA',to_date('12-JAN-14','DD-MON-YY'));
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED)
values (2000,'North Manager','JOHN','KING','A','67 DUNWOODY ROAD',null,'LASVEGAS','USA',
to_date('14-JAN-14','DD-MON-YY'));
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED)
values (3000,'East Manager','BOB','MORIS','A','679 GLENDRIGEDR',null,'FLORIDA','USA',
to_date('14-FEB-14','DD-MON-YY'));
COMMIT;
