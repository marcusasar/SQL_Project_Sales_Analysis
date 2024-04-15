-- Which customer type brings the most revenue?

SELECT 
    customer_type,
    ROUND(SUM(revenue),2) AS total_revenue
FROM
    sales
GROUP BY
    customer_type
ORDER BY
    total_revenue DESC;