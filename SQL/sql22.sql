-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

-- * 
-- * * 
-- * * * 
-- * * * * 
-- * * * * *
-- Write a query to print the pattern P(20).

;with cte as (
select 1 as id
    union all
    select id+ 1 from cte where id <20
)
SELECT REPLICATE('* ',id) FROM cte
