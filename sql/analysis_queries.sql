SELECT region , ROUND(SUM(sales), 2) AS total_revenue 
FROM superstore
GROUP BY region
ORDER BY total_revenue DESC;
SELECT category, ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY category 
ORDER BY total_sales DESC;
SELECT order_date FROM superstore;
SELECT strftime(
    '%Y-%m',
    DATE(SUBSTR(order_date, 7, 4) || '-' || SUBSTR(order_date, 1, 2) || '-' || SUBSTR(order_date, 4, 2))
  ) AS month,
ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY month
ORDER BY month;
SELECT customer_name, ROUND(SUM(sales),2) AS total_spent
FROM superstore
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;
SELECT product_name, ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;