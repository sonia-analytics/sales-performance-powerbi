-- Total Sales by Region
SELECT region, SUM(sales) AS total_sales
FROM sales_data
GROUP BY region;

-- Monthly Sales Trend
SELECT DATE_TRUNC('month', order_date) AS month, SUM(sales)
FROM sales_data
GROUP BY month;

-- Top Products
SELECT product_name, SUM(sales) AS revenue
FROM sales_data
GROUP BY product_name
ORDER BY revenue DESC;
