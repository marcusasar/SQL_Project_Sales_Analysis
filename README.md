# Sales Analysis

This projects aims to provide insight into the sales performance of an e-commence company for the year 2019. By analyzing various aspect of the sales data, we seek to identify trends, make data-driven recommendations, and gain deeper understanding on the company performance.

SQL queries? Check them out here: [Project_SQL Folder](Project_SQL)

#### Data Source 
Walmart Sales Data: The primary dataset for this analysis is in [Data Folder](Data), containing detailed information about each sales made by the company.

# Background

The questions I wanted to answer through my SQL queries were:

  1. What is the number of sales made in each time of the day?
  2. Which customer type brings the most revenue?
  3. Which city has the largest tax percent/ VAT (Value Added TAx)?
  4. Which customer type pays the most VAT?
  5. What is the most selling product line?
  6. What is the most common payment method?

# Tools Used

For my deep analysis into the sales, I harnessed the power of several key tools:

  - **SQL:** The backbone of my analysis, allowing me to query the database and unearth critical insights.

  - **MySQL:** The chosen database management system, ideal for handling the sales data.

  - **Visual Studio Code:** My go-to for database management and executing SQL queries.

  - **Git & GitHub:** Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking.

# The Analysis

Each query for this project aimed at investigating specific aspects of the sales. Here’s how I approached each question:

1. What is the number of sales made in each time of the day?

To identify the number of sales in each time of the day, I filtered it by the day name, grouped the data by total sales, focusing on Thursday. This query highlights sales made in each time of day:

```sql
SELECT
  time_of_day,
  COUNT(*) AS cnt
FROM sales
WHERE day_name = 'Thursday'
GROUP BY time_of_day
ORDER BY cnt DESC;
```

Here's a breakdown of sales made in each time of the day on Thursday:
Here are some insights we can draw from this data:

 - Evening Sales: Evening seems to be the peak time for sales, with a total of 56 units sold during this period. 
   
- Afternoon Sales: Afternoons show a slightly lower but still significant number of sales, with a total of 49 units sold.

- Morning Sales: Mornings have the lowest sales figures among the three time periods, with only 33 units sold. 

2. Which customer type brings the most revenue?
