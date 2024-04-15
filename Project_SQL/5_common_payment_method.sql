-- What is the most common payment method?

SELECT
	payment_method,
    COUNT(*) AS cnt
FROM sales
GROUP BY 
	payment_method
ORDER BY 
	cnt DESC;