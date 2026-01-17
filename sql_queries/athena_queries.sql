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

🔹 1. Total Revenue & Profit (Executive KPI)
SELECT 
    SUM(sales) AS total_revenue,
    SUM(profit) AS total_profit
FROM raw_data;


🔹 2. Monthly Sales Trend (Time Series)
SELECT 
    date_format(order_date, '%Y-%m') AS month,
    SUM(sales) AS monthly_sales
FROM raw_data
GROUP BY date_format(order_date, '%Y-%m')
ORDER BY month;

3. Region Contribution Percentage
SELECT 
    region,
    SUM(sales) AS region_sales,
    ROUND(
        SUM(sales) * 100.0 / (SELECT SUM(sales) FROM raw_data),
        2
    ) AS sales_percentage
FROM raw_data
GROUP BY region;

4. Category Performance Ranking
SELECT 
    category,
    SUM(sales) AS total_sales,
    RANK() OVER (ORDER BY SUM(sales) DESC) AS sales_rank
FROM raw_data
GROUP BY category;

🔹 5. Top 3 Products by Profit
SELECT 
    product,
    SUM(profit) AS total_profit
FROM raw_data
GROUP BY product
ORDER BY tot
