SELECT *
FROM sales
LIMIT 10;

SELECT SUM(Sales) AS total_sales
FROM sales;

sales by region 
SELECT Region, SUM(Sales) AS total_sales
FROM sales
GROUP BY Region
ORDER BY total_sales DESC;

sales by category
SELECT Category, SUM(Sales) AS total_sales
FROM sales
GROUP BY Category
ORDER BY total_sales DESC;

top 10 products by sales
SELECT "Product Name", SUM(Sales) AS total_sales
FROM sales
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 10;

sales by state
SELECT State, SUM(Sales) AS total_sales
FROM sales
GROUP BY State
ORDER BY total_sales DESC
LIMIT 10;

sales by segment 
SELECT Segment, SUM(Sales) AS total_sales
FROM sales
GROUP BY Segment
ORDER BY total_sales DESC;

monthly sales by trend
SELECT substr("Order Date", length("Order Date") - 3, 4) || '-' ||
       printf('%02d', CAST(substr("Order Date", 1, instr("Order Date", '/') - 1) AS INTEGER)) AS month,
       SUM(Sales) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;