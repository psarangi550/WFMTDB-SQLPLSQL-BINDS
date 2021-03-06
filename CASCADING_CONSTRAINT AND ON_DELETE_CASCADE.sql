

CREATE TABLE SUPPLIERS_WFMT(
    SUPPLIER_ID NUMBER NOT NULL,
    SUPPLIER_NAME VARCHAR2(50) NOT NULL,
    CONTACT_NUMBER NUMBER,
    CONSTRAINT SIPPLIER_PK PRIMARY KEY(SUPPLIER_ID)
)

DROP TABLE SUPPLIERS

CREATE TABLE PRODUCTS_WFMT(
    PRODUCTS_ID NUMBER NOT NULL,
    SUPPLIERS_ID NUMBER,
    CONSTRAINT PRODUCTS_PK_VAL PRIMARY KEY (PRODUCTS_ID),
    CONSTRAINT PRODUCTS_FK_VAL FOREIGN KEY(SUPPLIERS_ID) REFERENCES SUPPLIERS_WFMT(SUPPLIER_ID)
)

BEGIN
    INSERT INTO PRODUCTS_WFMT (PRODUCTS_ID,SUPPLIERS_ID) VALUES (1,1001);
    INSERT INTO PRODUCTS_WFMT (PRODUCTS_ID,SUPPLIERS_ID) VALUES (2,1001);
    INSERT INTO PRODUCTS_WFMT (PRODUCTS_ID,SUPPLIERS_ID) VALUES (3,1001);
    INSERT INTO PRODUCTS_WFMT(PRODUCTS_ID,SUPPLIERS_ID)  VALUES (4,1002);
    INSERT INTO PRODUCTS_WFMT(PRODUCTS_ID,SUPPLIERS_ID)  VALUES (5,1002);
    INSERT INTO PRODUCTS_WFMT(PRODUCTS_ID,SUPPLIERS_ID)  VALUES (6,1003);
END;
/

SELECT * FROM SUPPLIERS_WFMT;

SELECT * FROM PRODUCTS_WFMT;

ALTER TABLE SUPPLIERS_WFMT DROP COLUMN SUPPLIER_ID CASCADE CONSTRAINT

SELECT * FROM SUPPLIERS_WFMT;

SELECT * FROM PRODUCTS_WFMT;

DROP TABLE SUPPLIERS_WFMT


DROP TABLE PRODUCTS_WFMT


CREATE TABLE SUPPLIERS_WFMT(
    SUPPLIER_ID NUMBER NOT NULL,
    SUPPLIER_NAME VARCHAR2(50) NOT NULL,
    CONTACT_NUMBER NUMBER,
    CONSTRAINT SIPPLIER_PK PRIMARY KEY(SUPPLIER_ID)
)

CREATE TABLE PRODUCTS_WFMT(
    PRODUCTS_ID NUMBER NOT NULL,
    SUPPLIERS_ID NUMBER,
    CONSTRAINT PRODUCTS_PK_VAL PRIMARY KEY (PRODUCTS_ID),
    CONSTRAINT PRODUCTS_FK_VAL FOREIGN KEY(SUPPLIERS_ID) REFERENCES SUPPLIERS_WFMT(SUPPLIER_ID)
)

/*USING BEGIN AND END ANONYMOUS BLOCK INSERTING  ALL THE RESULT INTO DB */

BEGIN
    INSERT ALL
    INTO SUPPLIERS_WFMT (SUPPLIER_ID,SUPPLIER_NAME,CONTACT_NUMBER) VALUES(1001,'AUTOFIX',800811343 )
    INTO SUPPLIERS_WFMT (SUPPLIER_ID,SUPPLIER_NAME,CONTACT_NUMBER) VALUES(1002,'PACS',800811345 )
    INTO SUPPLIERS_WFMT (SUPPLIER_ID,SUPPLIER_NAME,CONTACT_NUMBER) VALUES(1003,'SRIMS',800811347 )
    SELECT * FROM DUAL;
END
/

SELECT * FROM SUPPLIERS_WFMT

/*USING BEGIN AND END ANONYMOUS BLOCK INSERTING THE RESULT INTO DB */

BEGIN
    INSERT INTO PRODUCTS_WFMT (PRODUCTS_ID,SUPPLIERS_ID) VALUES (1,1001);
    INSERT INTO PRODUCTS_WFMT (PRODUCTS_ID,SUPPLIERS_ID) VALUES (2,1001);
    INSERT INTO PRODUCTS_WFMT (PRODUCTS_ID,SUPPLIERS_ID) VALUES (3,1001);
    INSERT INTO PRODUCTS_WFMT(PRODUCTS_ID,SUPPLIERS_ID)  VALUES (4,1002);
    INSERT INTO PRODUCTS_WFMT(PRODUCTS_ID,SUPPLIERS_ID)  VALUES (5,1002);
    INSERT INTO PRODUCTS_WFMT(PRODUCTS_ID,SUPPLIERS_ID)  VALUES (6,1003);
END;
/

SELECT * FROM PRODUCTS_WFMT;

ALTER TABLE PRODUCTS_WFMT
DROP CONSTRAINT PRODUCTS_FK_VAL

/*DROPTING THE PRIMARY KEY CONSTRAINT*/

ALTER TABLE PRODUCTS_WFMT
DROP CONSTRAINT PRODUCTS_PK_VAL

/* CREATING IT AGAIN BUT USING THE ADD CONSTAINT NO THE MODIFY COLUMN */

ALTER TABLE PRODUCTS_WFMT 
ADD CONSTRAINT PRODUCTS_PK_VAL
PRIMARY KEY (PRODUCTS_ID)

/* ADDING THE ON DELETE CONSTAINT OVER HERE */

/* ALTERING THE FOREIGN KEY RELATIONSHIP*/

ALTER TABLE PRODUCTS_WFMT 
ADD CONSTRAINT PRODUCTS_FK_VAL
FOREIGN KEY (SUPPLIERS_ID) 
REFERENCES SUPPLIERS_WFMT(SUPPLIER_ID)
ON DELETE CASCADE


DELETE FROM SUPPLIERS_WFMT WHERE SUPPLIER_ID=1001

SELECT * FROM PRODUCTS_WFMT





