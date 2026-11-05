SELECT 
    COUNT(id) AS total_orders, 
    SUM(total_amount) AS total_revenue
FROM orders 
WHERE status != 'отменен';