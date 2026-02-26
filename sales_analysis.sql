-- Total revenue
SELECT SUM(amount) AS total_revenue
FROM sales_dataset;

-- Revenue by region
SELECT region, SUM(amount) AS revenue
FROM sales_dataset
GROUP BY region
ORDER BY revenue DESC;

-- Top 5 customers by revenue
SELECT customer_name, SUM(amount) AS total_spent
FROM sales_dataset
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- Monthly revenue trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(amount) AS monthly_revenue
FROM sales_dataset
GROUP BY month
ORDER BY month;
