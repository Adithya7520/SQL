-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

-- * * * * * 
-- * * * * 
-- * * * 
-- * * 
-- *
-- Write a query to print the pattern P(20).

;with cte as (
select 20 as num
    union all
    select num - 1 from cte where num > 0
)

select replicate("* ",num) from cte