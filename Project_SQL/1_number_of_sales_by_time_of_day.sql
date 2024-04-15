-- What is the number of sales made in each time of the day?

SELECT 
	time_of_day,
    COUNT(*) AS total_sales
FROM
	sales
WHERE
	day_name = "Thursday"
GROUP BY
	time_of_day
ORDER BY
	total_sales DESC;

