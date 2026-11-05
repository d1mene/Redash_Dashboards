SELECT 
    c.city, 
    COUNT(o.id) AS orders_count
FROM orders o
JOIN customers c ON o.customer_id = c.id
WHERE o.status != 'отменен'
GROUP BY c.city
ORDER BY orders_count DESC
LIMIT 5;