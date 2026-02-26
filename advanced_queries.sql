-- Total Sales by Region
SELECT region, SUM(amount) AS total_sales
FROM sales_dataset
GROUP BY region;

-- Average Sales Per Customer
SELECT customer_name, AVG(amount) AS avg_spending
FROM sales_dataset
GROUP BY customer_name;

-- Top 5 Highest Sales
SELECT *
FROM sales_dataset
ORDER BY amount DESC
LIMIT 5;
