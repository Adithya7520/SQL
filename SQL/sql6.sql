-- SELECT
    (SELECT MAX(months * Salary) FROM Employee),
    (SELECT COUNT(*) FROM Employee WHERE months * Salary = (SELECT MAX(months * Salary) FROM Employee))
;
