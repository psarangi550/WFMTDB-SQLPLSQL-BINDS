/*CREATING THE ROLE FOR THE  SALES TABLE WHICH IS IN SCHEMA :-*/

CREATE ROLE SELECTED_SALES_USER_PREVILEDGE; --CREATING THE ROLE FOR THE SELECT PREVELEDGES

GRANT SELECT ON ADMIN.SALES TO SELECTED_SALES_USER_PREVILEDGE--ONLY GRANTING THE SELECT ACCESS FOR THE ADMIN SCHEMA SALES TABLE

--NOW WE NEED ARE CREATING FEW USER SCHEA WHICH NEED TO HAVE THE ACCESS

CREATE USER RIKA IDENTIFIED BY Abismruta1997
ACCOUNT UNLOCK

--NOW WE CAN PROVIDE THE SELECTED_SALES_USER_PREVILEDGE TO USER --

GRANT  SELECTED_SALES_USER_PREVILEDGE TO RIKA





SELECT * FROM ALL_OBJECTS WHERE OBJECT_TYPE='TABLE' AND OBJECT_NAME='SALES'