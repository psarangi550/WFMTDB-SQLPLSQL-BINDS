
create table bricks (
  brick_id integer,
  colour   varchar2(10),
  shape    varchar2(10),
  weight   integer
);

insert into bricks values ( 1, 'blue', 'cube', 1 );
insert into bricks values ( 2, 'blue', 'pyramid', 2 );
insert into bricks values ( 3, 'red', 'cube', 1 );
insert into bricks values ( 4, 'red', 'cube', 2 );
insert into bricks values ( 5, 'red', 'pyramid', 3 );
insert into bricks values ( 6, 'green', 'pyramid', 1 );


SELECT * FROM BRICKS;

SELECT BRICK_ID , TOTAL_COUNT NUMBER DEFAULT (COUNT(BRICK_ID)) FROM BRICKS ;

SELECT *,DEFAULT COUNT(1) AS TOTAL_COUNT FROM BRICKS

ALTER TABLE BRICKS ADD TOTAL_COUNT NUMBER DEFAULT COUNT(BRICK_ID);

ALTER TABLE BRICKS DROP COLUMN TOTAL_COUNT ;

ALTER TABLE BRICKS ADD TOTAL_COUNT AS ();

ALTER TABLE BRICKS ADD TOTAL_COUNT NUMBER AS (COUNT(BRICK_ID)) 

SELECT B.*,(SELECT COUNT(*) FROM BRICKS) AS TOTAL_COUNT FROM BRICKS B;

SELECT COUNT(BRICK_ID) FROM BRICKS


SELECT B.*,(SELECT COLOUR,COUNT(*) FROM BRICKS GROUP BY COLOUR) FROM BRICKS B

SELECT * FROM EMP;

SELECT B.*,(SELECT COUNT(*) FROM BRICKS) AS TOOTAL_COUNT FROM BRICKS 