SELECT P.sku, P.product_name 
FROM PRODUCT P
LEFT JOIN INVOICE_ITEM I ON P.id = I.product_id
WHERE I.product_id IS NULL
ORDER BY P.sku;

