
SELECT * FROM BRICKS

SELECT B.*,
SUM(WEIGHT) OVER(PARTITION BY COLOUR)
FROM BRICKS B

SELECT B.*,
SUM(WEIGHT) OVER(ORDER BY COLOUR)


SELECT B.*,
COUNT(SHAPE) OVER(PARTITION BY SHAPE) AS COUNT_SHAPE,
MEDIAN (WEIGHT)OVER (PARTITION BY SHAPE)
FROM BRICKS B



select b.*, 
       count(*) over (
         order by brick_id
       ) running_total, 
       sum ( weight ) over (
         order by brick_id
       ) running_weight
from   bricks b;


select b.brick_id, b.weight,
       round ( avg ( weight ) over (
         order BY brick_id
       ), 2 ) running_average_weight
from   bricks b
order  by brick_id;


SELECT B.BRICK_ID,B.SHAPE,B.WEIGHT,
SUM(WEIGHT) OVER( PARTITION BY SHAPE) AS ONLY_PART
FROM BRICKS B



SELECT B.BRICK_ID,B.SHAPE,B.WEIGHT,
SUM(WEIGHT)OVER(ORDER BY SHAPE) AS ONLY_ORDER
FROM BRICKS B


SELECT B.BRICK_ID,B.SHAPE,B.WEIGHT,
SUM(WEIGHT) OVER(PARTITION BY SHAPE ORDER BY SHAPE) AS BOTH_PART_ORDER
FROM BRICKS B

/*another approach */


select B.*,
sum(weight) over(partition by brick_id) as total_weight_brick_id 
from bricks B

select B.*,
sum(weight) over(order by brick_id) as total_weight_brick_id 
from bricks B

select B.*,
sum(weight) over(partition by brick_id order by brick_id) as total_weight_brick_id 
from bricks B














