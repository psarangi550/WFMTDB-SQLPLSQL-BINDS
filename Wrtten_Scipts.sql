
DESC CUSTOMER;
SELECT * FROM SALES_HiSTORY;
SELECT * FROM SALESPERSON;
SELECT * FROM SALES;
SELECT * FROM PRODUCT;
SELECT * FROM CUSTOMER;

SELECT DISTINCT S.SALES_DATE, C.COUNTRY, SP.FIRST_NAME , P.PRODUCT_NAME, SUM(SH.QUANTITY) AS QUANTITY_SOLD , 
SUM(S.TOTAL_AMOUNT) AS TOTAl_AMOUNT
FROM SALES S , CUSTOMER C , SALESPERSON SP, PRODUCT P, SALES_HISTORY SH 
WHERE S.TOTAL_AMOUNT>500
GROUP BY S.SALES_DATE,C.COUNTRY,SP.FIRST_NAME, P.PRODUCT_NAME
ORDER BY S.SALES_DATE ,C.COUNTRY





SELECT * FROM CAT;