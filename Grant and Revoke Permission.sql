GRANT SELECT ON SALES TO SCOTT;

REVOKE SELECT  ON  SALES  FROM  SCOTT;

CREATE USER NAJU IDENTIFIED BY ManutdCR72022
DEFAULT TABLESPACE SALES 
ACCOUNT UNLOCK;

select * from DBA_USERS where username='NAJU';

CREATE USER Ptarik IDENTIFIED BY ManutdCR72022
DEFAULT TABLESPACE USERS 
ACCOUNT UNLOCK;

select * from DBA_USERS where username='PTARIK';

GRANT  ALL ON SALES TO PTARIK;

REVOKE ALL ON SALES FROM PTARIK;

GRANT CREATE SESSION TO NAJU;

SHOW USER;






















