SELECT
	trunc(ORDER_DATE, 'MM') AS year_month,
	count(order_id) AS amount_orders
FROM
	ORDERS
GROUP BY trunc(ORDER_DATE, 'MM')
ORDER BY trunc(ORDER_DATE, 'MM') ASC 
