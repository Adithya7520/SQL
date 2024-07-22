SELECT 
    C.country_name, 
    COUNT(I.invoice_number) AS total_invoices,
    ROUND(AVG(I.total_price), 6) AS avg_amount
FROM 
    COUNTRY C
    JOIN CUSTOMER CU ON C.id = CU.city_id
    JOIN INVOICE I ON CU.id = I.customer_id
GROUP BY 
    C.country_name
HAVING 
    AVG(I.total_price) > (
        SELECT AVG(total_price) 
        FROM INVOICE
    )
ORDER BY 
    C.country_name;
