1. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM train_data;
2. Top 5 Products by Sales
SELECT "Product Name",
       SUM(Sales) AS Total_Sales
FROM train_data
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 5;
3. Sales by Category
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM train_data
GROUP BY Category;
4. Sales by Region
SELECT Region,
       SUM(Sales) AS Total_Sales
FROM train_data
GROUP BY Region;
5. Top 10 Customers
SELECT "Customer Name",
       SUM(Sales) AS Total_Sales
FROM train_data
GROUP BY "Customer Name"
ORDER BY Total_Sales DESC
LIMIT 10;
6. Sales by Segment
SELECT Segment,
       SUM(Sales) AS Total_Sales
FROM train_data
GROUP BY Segment;
7. Average Sales per Order
SELECT AVG(Sales) AS Avg_Sales
FROM train_data;
8. Top 10 Cities by Sales
SELECT City,
       SUM(Sales) AS Total_Sales
FROM train_data
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;
9. Sales by Sub-Category
SELECT "Sub-Category",
       SUM(Sales) AS Total_Sales
FROM train_data
GROUP BY "Sub-Category"
ORDER BY Total_Sales DESC;
10. Top States by Sales
SELECT State,
       SUM(Sales) AS Total_Sales
FROM train_data
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;
Advanced SQL 
CTE Example
WITH category_sales AS (
    SELECT Category,
           SUM(Sales) AS Total_Sales
    FROM train_data
    GROUP BY Category
)
SELECT *
FROM category_sales
ORDER BY Total_Sales DESC;
ROW_NUMBER()
SELECT "Product Name",
       Sales,
       ROW_NUMBER() OVER (ORDER BY Sales DESC) AS Row_Num
FROM train_data;
RANK()
SELECT "Product Name",
       Sales,
       RANK() OVER (ORDER BY Sales DESC) AS Product_Rank
FROM train_data;
Create a View
CREATE VIEW top_customers AS
SELECT "Customer Name",
       SUM(Sales) AS Total_Sales
FROM train_data
GROUP BY "Customer Name";
Check it:
SELECT * FROM top_customers LIMIT 10;