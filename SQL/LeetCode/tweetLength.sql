-- Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

-- Return the result table in any order.

-- The result format is in the following example.
# Write your MySQL query statement below
select tweet_id from Tweets where LENGTH(content) > 15