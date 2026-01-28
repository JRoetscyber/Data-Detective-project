--Write a query that returns two columns: Category and Total_Revenue
SELECT
	p.CATEGORY,
	'R'||to_char(nvl(sum(p.PRICE * o.QUANTITY), 0), 'FM999,999,999.00') AS Total_Revenue
FROM
	PRODUCTS p
LEFT JOIN ORDERS o ON
	p.PRODUCT_ID = o.PRODUCT_ID
GROUP BY p.CATEGORY