-- Which customer type pays the most in VAT?

SELECT 
	customer_type,
    ROUND(AVG(VAT),2) AS VAT
FROM 	
	sales
GROUP BY
	customer_type
ORDER BY
	VAT DESC;


SELECT 
	product_line,
    ROUND(AVG(VAT),2) AS VAT
FROM 	
	sales
GROUP BY
	product_line
ORDER BY
	VAT DESC;