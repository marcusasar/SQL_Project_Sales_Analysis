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

**1. What is the number of sales made in each time of the day?**

To identify the number of sales in each time of the day, I filtered it by the day name, grouped the data by time of day, focusing on Thursday. This query highlights sales made in each time of day:

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

| time_of_day    | total_sales  |
|----------------|------------- |
| Evening        | 56           |
| Afternoon      | 49           |
| Morning        | 33           |

Table of total sales for the time of day for Thursday

**2. Which customer type brings the most revenue?**

This query help to identify the customer type the generate the mosst revenue.

```sql
SELECT 
    customer_type,
    ROUND(SUM(revenue),2) AS total_revenue
FROM sales
GROUP BY customer_type
ORDER BY total_revenue DESC;
```

Here's the breakdown of the customer type with the most revenue.

- Revenue Disparity: The data shows that members generated a total revenue of $163,625.10, while normal customers generated $157,261.29. This suggests that members contribute more to the revenue compared to normal customers.

- Membership Impact: The higher revenue from members indicates that your membership program or services targeting members might be effective in driving sales or generating higher value transactions.

| customer_type  | total_revenue|
|----------------|------------- |
| Member         | $163,625.10  |
| Normal         | $157,261.29  |

Table of the customer type with higher revenue

**3. Which customer type pays the most VAT(Value Added Tax)?**

This query help to identify the customer type that pays the most tax(VAT)

```sql
SELECT 
	customer_type,
    ROUND(AVG(VAT),2) AS VAT
FROM sales
GROUP BY customer_type
ORDER BY VAT DESC;
```

- VAT Contribution: The data shows that members paid a VAT of $15.61, while normal customers paid $15.10. This indicates that members, on average, contribute slightly more to the VAT revenue compared to normal customers.

- Membership Status and Spending: The higher VAT paid by members suggests that they might engage in higher-value transactions or purchase more taxable goods/services compared to normal customers. This could be due to various factors such as membership perks, discounts, or exclusive offers that incentivize members to spend more.

| customer_type  | VAT          |
|----------------|------------- |
| Member         | 15.61        |
| Normal         | 15.10        |

Table of customer type with VAT payment

**4. What is the most selling product line?**

This query helps to identy the most selling product lines.

```sql
SELECT
	product_line,
    COUNT(product_line) AS cnt
FROM sales
GROUP BY product_line
ORDER BY cnt DESC;
```

- Popular Product Lines: Fashion accessories, food and beverages, and electronic accessories are the top three product lines based on the number of products sold. This suggests that these categories are in high demand among customers.

| product_line            | cnt          |
|-------------------------|------------- |
| Fashion accessories     | 178          |
| Food and beverages      | 174          |
| Electronic accessories  | 169          |
| Sports and travel       | 163          |
| Home and lifestyle      | 160          |
| Health and beauty       | 151          |

Table of the most selling product line

**5. What is the most common payment method?**

This query identifies the common paymnent method.

```sql
```
