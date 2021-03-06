/*
MANIPULATING THE SALES,PRODUCT,CUSTOMER TABLE THROUGH  THE JOIN
*/

SELECT * FROM PRODUCT;

SELECT S.SALES_DATE , S.TOTAL_AMOUNT, C.FIRST_NAME,C.LAST_NAME,P.PRODUCT_NAME,P.PRODUCT_CATEGORY
FROM SALES S INNER JOIN CUSTOMER C
ON S.CUSTOMER_ID=C.CUSTOMER_ID
LEFT OUTER JOIN PRODUCT P
ON S.PRODUCT_ID=P.PRODUCT_ID;

/*
MANIPULATING THE SALES,PRODUCT,CUSTOMER,SALE_PERSON TABLE THROUGH  THE JOIN
*/

SELECT * FROM SALES;
SELECT * FROM CUSTOMER;
SELECT * FROM SALESPERSON;
SELECT * FROM  PRODUCT;


SELECT S.SALES_DATE,S.PRODUCT_ID,S.CUSTOMER_ID,S.TAX_AMOUNT,S.TOTAL_AMOUNT,
C.FIRST_NAME,C.LAST_NAME, SP.JOB_TITLE,SP.CITY,P.PRODUCT_NAME, P.PRODUCT_CATEGORY
FROM SALES S INNER JOIN CUSTOMER C 
ON S.CUSTOMER_ID=C.CUSTOMER_ID
INNER JOIN PRODUCT P
ON S.PRODUCT_ID=P.PRODUCT_ID
LEFT OUTER JOIN  SALESPERSON SP
ON S.SALESPERSON_ID=SP.SALESPERSON_ID;


/*
ADDING AND FILTER ALONG WITH THE JOIN QUERIES WHICH WILL BE EXECUTED 
*/
--WHENEVER WE ARE ADDING AND CLAUSE AND FILTER IN BETWEEN THE  JOIN,
--FIRST THE FILTER WILL EXECUTE AND THEN 
--FILTER FUNCTION WILL BE GOING TO EXECUTE

SELECT S.SALES_DATE,S.PRODUCT_ID,S.CUSTOMER_ID,S.TAX_AMOUNT,S.TOTAL_AMOUNT,
C.FIRST_NAME,C.LAST_NAME, SP.JOB_TITLE,SP.CITY,P.PRODUCT_NAME, P.PRODUCT_CATEGORY
FROM SALES S INNER JOIN CUSTOMER C 
ON S.CUSTOMER_ID=C.CUSTOMER_ID
INNER JOIN PRODUCT P
ON S.PRODUCT_ID=P.PRODUCT_ID
AND P.PRODUCT_CATEGORY='Mobile'
LEFT OUTER JOIN  SALESPERSON SP
ON S.SALESPERSON_ID=SP.SALESPERSON_ID;



/*
NOW ADDING THE FILTER CONDITION WHICH WILL EXECUTE AFTER  ALL THE JOIN QUERIES BEEN EXECUTED USING THE 
*/

SELECT S.SALES_DATE,S.PRODUCT_ID,S.CUSTOMER_ID,S.TAX_AMOUNT,S.TOTAL_AMOUNT,
C.FIRST_NAME,C.LAST_NAME, SP.JOB_TITLE,SP.CITY,P.PRODUCT_NAME, P.PRODUCT_CATEGORY
FROM SALES S INNER JOIN CUSTOMER C 
ON S.CUSTOMER_ID=C.CUSTOMER_ID
INNER JOIN PRODUCT P
ON S.PRODUCT_ID=P.PRODUCT_ID
--AND P.PRODUCT_CATEGORY='Mobile'
LEFT OUTER JOIN  SALESPERSON SP
ON S.SALESPERSON_ID=SP.SALESPERSON_ID
WHERE SP.JOB_TITLE='East Manager' ; 

/*
INTEGRATING BOTH THE APPROACHES
*/

SELECT S.SALES_DATE,S.PRODUCT_ID,S.CUSTOMER_ID,S.TAX_AMOUNT,S.TOTAL_AMOUNT,
C.FIRST_NAME,C.LAST_NAME, SP.JOB_TITLE,SP.CITY,P.PRODUCT_NAME, P.PRODUCT_CATEGORY
FROM SALES S INNER JOIN CUSTOMER C 
ON S.CUSTOMER_ID=C.CUSTOMER_ID
INNER JOIN PRODUCT P
ON S.PRODUCT_ID=P.PRODUCT_ID
AND P.PRODUCT_CATEGORY='Mobile'
LEFT OUTER JOIN  SALESPERSON SP
ON S.SALESPERSON_ID=SP.SALESPERSON_ID
WHERE SP.JOB_TITLE='East Manager' ; 



