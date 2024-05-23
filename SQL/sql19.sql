-- Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

-- Note:

-- The tables may contain duplicate records.
-- The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.
SELECT  Company.company_code,Company.founder,COUNT(DISTINCT Lead_Manager.lead_manager_code),
COUNT( DISTINCT Senior_Manager.senior_manager_code),COUNT( DISTINCT Manager.manager_code),COUNT(DISTINCT Employee.employee_code) 
FROM Company
LEFT JOIN Lead_Manager ON Lead_Manager.company_code = Company.company_code
LEFT JOIN Senior_Manager ON Senior_Manager.company_code = Company.company_code
LEFT JOIN Manager ON Manager.company_code = Company.company_code
LEFT JOIN Employee ON Employee.company_code = Company.company_code
WHERE 1
GROUP BY Company.company_code,Company.founder
ORDER BY Company.company_code;