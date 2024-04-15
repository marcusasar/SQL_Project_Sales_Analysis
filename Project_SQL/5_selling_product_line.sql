-- What is the most selling product line?

SELECT
	product_line,
    COUNT(product_line) AS cnt
FROM 
    sales
GROUP BY 
    product_line
ORDER BY 
    cnt DESC;

DESC sales;

SELECT  
    payment_method,
    COUNT(payment_method) AS cnt
FROM sales
GROUP BY payment_method
ORDER BY cnt DESC;