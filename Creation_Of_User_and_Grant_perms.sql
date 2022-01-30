create user ironman identified by Liverpool2022
DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp;

select * FROM DBA_USERS where username='IRONMAN';

select * from DBA_USERS where username='IRONMAN' ;

create user thor identified by AnfieldEver2022
DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp
QUOTA 10M on users
PASSWORD EXPIRE
ACCOUNT UNLOCK;

select * from DBA_USERS where username='THOR' ;