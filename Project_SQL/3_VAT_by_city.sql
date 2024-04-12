-- Which city has the largest tax percent/ VAT (Value Added Tax)?
SELECT
	city,
    ROUND(AVG(VAT),2) AS VAT
FROM
	sales
GROUP BY
	city
ORDER BY
	VAT DESC;