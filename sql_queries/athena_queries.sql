-- Preview data
SELECT * FROM raw_data LIMIT 10;

-- Total sales by region
SELECT region, SUM(sales) AS total_sales
FROM raw_data
GROUP BY region;

-- Average profit by category
SELECT category, AVG(profit) AS avg_profit
FROM raw_data
GROUP BY category;

-- Top selling products
SELECT product, SUM(sales) AS total_sales
FROM raw_data
GROUP BY product
ORDER BY total_sales DESC;
