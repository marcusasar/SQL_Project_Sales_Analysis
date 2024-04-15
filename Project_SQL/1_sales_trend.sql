-- Are there any noticeable trends or patterns in revenue across the three months?

SELECT
    month_name,
    ROUND(SUM(revenue),2) AS total_revenue
FROM sales
GROUP BY month_name
ORDER BY total_revenue DESC;