
SELECT * FROM CAT ORDER BY 2;

SELECT * FROM TECHWISER;

desc TECHWISER;

INSERT INTO TECHWISER(ID ,NAME , SUBSCRIBER) VALUES (&ID,&NAME, &SUBSCRIBER);

COMMIT;

select * from stores_emp order by 1;

DESCRIBE STORES_EMP

insert into STORES_EMP values(1,'BANGLORE');

insert into STORES_EMP values(2,'BHUBANESWAR');

INSERT ALL 
INTO STORES_EMP(STORES_ID,CITY) VALUES (6,'CUTTACK')
INTO STORES_EMP(STORES_ID,CITY) VALUES (7,'KARSOL')
SELECT * FROM DUAL;

SELECT S.STORES_ID,COUNT(*)
FROM STORES_EMP S
GROUP BY STORES_ID

INSERT INTO STORES_EMP(STORES_ID,CITY) VALUES ( &STORES_ID, &CITY);

SELECT * FROM WFMTDB;

/*ALL ALTER COMMAND RELATED TO THE COLUMN */

/*CREATING A VIRTUAL COLUMN TO PERFORM ALTERATION */

SELECT * FROM WFMTDB;

ALTER TABLE WFMTDB ADD MODIFIED_CP GENERATED ALWAYS AS (SNE_ID*2)

ALTER TABLE WFMTDB MODIFY MODIFIED_CP GENERATED ALWAYS AS (SNE_ID*3)

ALTER TABLE WFMTDB RENAME COLUMN MODIFIED_CP TO NEW_MODIFIED_CP;

ALTER TABLE WFMTDB DROP COLUMN NEW_MODIFIED_CP;


/* ALL ALTER RELATED TO CONSTRAINT */

ALTER TABLE WFMTDB ADD CONSTRAINT PRIMARY_WFMT PRIMARY KEY (SNE_ID) ;

ALTER TABLE WFMTDB ADD CONSTRAINT SCHEME_NUMBER_UNIQUE UNIQUE (SCHEME_NUMBER);

ALTER TABLE WFMTDB DISABLE CONSTRAINT SCHEME_NUMBER_UNIQUE

ALTER TABLE WFMTDB ENABLE CONSTRAINT SCHEME_NUMBER_UNIQUE

ALTER TABLE WFMTDB DROP CONSTRAINT PRIMARY_WFMT;




