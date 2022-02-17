
with totals as (
  select b.*,
         sum ( weight ) over ( 
           PARTITION BY SHAPE
         ) weight_per_shape,
         sum ( weight ) over ( 
          ORDER BY BRICK_ID
         ) running_weight_by_id
  from   bricks b
)
  select * from totals
  where  weight_per_shape >4 AND running_weight_by_id>4
  order  by brick_id
  
  
  
  
  SELECT B.*,
  SUM(WEIGHT) OVER(ORDER BY COLOUR ROWS BETWEEN 2 PRECEDING AND CURRENT ROW ) AS RESULT_OP
  FROM BRICKS B
  
  
 
  SELECT B.*,
  (
  (SELECT SUM(WEIGHT) FROM BRICKS WHERE COLOUR=B.COLOUR)
  ) MY_SUB
  FROM BRICKS B
  WHERE MY_SUB>4


 
 SELECT * FROM
 (
 SELECT B.*,
 (
 SUM(WEIGHT) OVER(ORDER BY COLOUR ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW )
 ) RESULT_VAR
 FROM BRICKS B
 )
 WHERE RESULT_VAR>2
 
 
 
  SELECT * FROM
 (
 SELECT B.*,
 
 SUM(WEIGHT) OVER(ORDER BY COLOUR ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW ) AS RESULT_VAR
 FROM BRICKS B
 )
 WHERE RESULT_VAR>2
 
 /* ALTERNATE APPROACH*/
 
 SELECT * FROM (
 SELECT B.*,
 (SELECT SUM(WEIGHT) FROM BRICKS WHERE COLOUR=B.COLOUR) AS RESULT_NEW_VAR
 FROM BRICKS B
 )
 WHERE RESULT_NEW_VAR>3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 