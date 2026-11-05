SELECT 
    TO_CHAR(o.order_date, 'YYYY-MM') AS month, 
    SUM(o.total_amount) AS revenue,
    COUNT(o.id) AS orders_count
FROM orders o
WHERE o.status != 'отменен'
GROUP BY TO_CHAR(o.order_date, 'YYYY-MM')
ORDER BY month ASC;