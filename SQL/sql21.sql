-- You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). Packages contains two columns: ID and Salary (offered salary in $ thousands per month).



-- Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.

-- Sample Input

SELECT s.Name
FROM Students s
JOIN Friends f on s.ID = f.ID
join Packages pg on  f.Friend_ID =  pg.ID
join Packages ps on  s.ID = ps.ID
where pg.Salary > ps.Salary
order by pg.Salary