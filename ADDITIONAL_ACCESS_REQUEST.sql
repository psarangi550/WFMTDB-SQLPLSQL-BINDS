
/* PROVIDING THE ADDITIONAL ACCESS TO THE USER RIKA THROUGH ROLES*/

GRANT DELETE ON ADMIN.SALES TO SELECT_ACCESS_USER;

GRANT UPDATE ON ADMIN.SALES TO SELECT_ACCESS_USER;

ALTER USER RIKA DEFAULT ROLE SELECT_ACCESS_USER

