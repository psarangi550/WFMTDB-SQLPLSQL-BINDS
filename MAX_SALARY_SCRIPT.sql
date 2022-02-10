SELECT * FROM ALL_OBJECTS
WHERE OWNER='SYS' AND OBJECT_TYPE='VIEW' ORDER BY OBJECT_NAME;

SELECT * FROM SYS.ALL_ALL_TABLES WHERE ROWNUM<10;

SELECT * FROM EMPLOYEES WHERE  STORES_ID=4;

SELECT * FROM STORES_EMP;

SELECT * FROM EMP;
SELECT * FROM DEPT;




CREATE OR REPLACE VIEW MAX_SAL_V AS
/* FETCHING THE HIGHEST SALARY BY USING THE GROUP BY  STATEMENT */
SELECT * FROM EMPLOYEES WHERE (STORES_ID,SAL) IN  
(
SELECT STORES_ID,MAX(SAL)FROM EMPLOYEES GROUP BY STORES_ID
) 
ORDER BY STORES_ID

SELECT * FROM MAX_SAL_V


/* FETCHING THE HIGHEST SALARY BY USING THE JOIN STATEMENT */
CREATE VIEW MAX_EMP_SAL AS
(
SELECT EMP.EMPNO,EMP.ENAME,EMP.JOB,EMP.HIREDATE,EMP.SAL,EMP.DEPTNO,DEPT.DNAME 
FROM EMP,DEPT WHERE (EMP.SAL,EMP.DEPTNO,DEPT.DNAME) 
IN
(
    SELECT MAX(E.SAL),D.DEPTNO,D.DNAME 
    FROM EMP E INNER JOIN DEPT D 
    ON E.DEPTNO=D.DEPTNO 
    GROUP BY D.DNAME,D.DEPTNO
)
)

SELECT * FROM MAX_EMP_SAL ORDER BY DEPTNO ;


/* ANOTHER ALTERNATE WAY OF FETCHING THE MAX_SALARY_VALUE*/

CREATE VIEW ALTERNATE_WMP_MAX_SAL AS
SELECT E1.* FROM EMPLOYEES E1 INNER JOIN 
(
(SELECT E.STORES_ID, MAX(E.SAL) AS SAL FROM EMPLOYEES E GROUP BY  STORES_ID) E2
)
ON E1.STORES_ID=E2.STORES_ID AND E1.SAL=E2.SAL
ORDER BY E2.STORES_ID









