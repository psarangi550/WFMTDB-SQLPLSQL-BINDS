SELECT * FROM WFMTDB;

/*CREATING THE MULTIPLE DESTINATION TABLE TO INSER THE DATA SIMULTENIOUSLY*/

CREATE TABLE DEST_TABLE_1 
(
    ID NUMBER PRIMARY KEY,
    ENAME VARCHAR2(255),
    DATE_OF DATE DEFAULT TO_DATE('31-DEC-2099','DD-MM-YYYY')

)

CREATE TABLE DEST_TABLE_2 
(
    ID NUMBER PRIMARY KEY,
    ENAME VARCHAR2(255),
    DATE_OF DATE DEFAULT TO_DATE('31-DEC-2099','DD-MM-YYYY')

)

CREATE TABLE DEST_TABLE_3 
(
    ID NUMBER PRIMARY KEY,
    ENAME VARCHAR2(255),
    DATE_OF DATE DEFAULT TO_DATE('31-DEC-2099','DD-MM-YYYY')

)

/* HERE IN THIS CASE WE ARE INSERTING THE DATA TO THE DESTIMATION TABLE USING PRE-EXISTING EMPLOYEE TABLE */

SELECT COUNT(E.EMPNO) FROM EMP E;

SELECT SAL FROM EMP E;

DESCRIBE EMP

SELECT SYSDATE FROM DUAL;

--HERE WE ARE INSETRING BASED ON THE CONDITION FOR THE 2 TABLE AND REST TWO TABLE FROM THE DUAL TABLE

INSERT ALL 
WHEN SAL < 1500 THEN
    INTO DEST_TABLE_1  (ID,ENAME,DATE_OF) VALUES (EMPNO,ENAME,HIREDATE)
WHEN SAL BETWEEN 1500 AND 2500 THEN
    INTO DEST_TABLE_2  (ID,ENAME,DATE_OF) VALUES (EMPNO,ENAME,HIREDATE)
ELSE
    INTO DEST_TABLE_3  (ID,ENAME,DATE_OF) VALUES (EMPNO,ENAME,HIREDATE)
SELECT EMPNO,ENAME,HIREDATE,SAL
FROM EMP;


--HERE WE ARE INSETRING REST TWO TABLE FROM THE DUAL PLACEHOLDER TABLE


CREATE TABLE DEST_TABLE_4
(
    ID NUMBER PRIMARY KEY,
    ENAME VARCHAR2(255),
    DATE_OF DATE DEFAULT TO_DATE('31-DEC-2099','DD-MM-YYYY')

)

CREATE TABLE DEST_TABLE_5 
(
    ID NUMBER PRIMARY KEY,
    ENAME VARCHAR2(255),
    DATE_OF DATE DEFAULT TO_DATE('31-DEC-2099','DD-MM-YYYY')
)

DESCRIBE WFMTDB

INSERT ALL 
    INTO DEST_TABLE_4(ID,ENAME,DATE_OF) VALUES (1,'RIKA',TO_DATE('16-MAR-1997','DD-MM-YYYY'))
    INTO DEST_TABLE_5(ID,ENAME,DATE_OF) VALUES (1,'ABI',TO_DATE('15-JAN-1963','DD-MM-YYYY'))
    INTO WFMTDB(CP_NUMBER,SNE_ID,SCHEME_NUMBER,GOOD_TO_GO) VALUES ('CP00BB',77777,66666,TO_DATE('16-DEC-1994','DD-MM-YYYY'))
SELECT * FROM DUAL;


UPDATE WFMTDB SET CP_NUMBER='CP00CC' WHERE SNE_ID=77777;

SELECT * FROM WFMTDB;