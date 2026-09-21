-- Customer Analysis

-- 1. Top 10 Customers by Sales
SELECT TOP(10)
    Customer_Name,
    Customer_ID,
    SUM(Sales) AS TotalSales
FROM [dbo].[SalesData]
GROUP BY Customer_Name, Customer_ID
ORDER BY TotalSales DESC;


-- 2. Customers with Sales above $10,000
SELECT 
    Customer_Name,
    Customer_ID,
    SUM(Sales) AS TotalSales
FROM [dbo].[SalesData]
GROUP BY Customer_Name, Customer_ID
HAVING SUM(Sales) > 10000
ORDER BY TotalSales DESC;


-- 3. Number of Orders per Customer
SELECT 
    Customer_ID,
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS TotalOrders
FROM [dbo].[SalesData]
GROUP BY Customer_ID, Customer_Name
ORDER BY TotalOrders DESC;


-- 4. Sales and Orders per Customer
SELECT 
    Customer_ID,
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS TotalOrders,
    SUM(Sales) AS TotalSales
FROM [dbo].[SalesData]
GROUP BY Customer_ID, Customer_Name
ORDER BY TotalSales DESC;


-- 5. Average Order Value
SELECT 
    SUM(Sales) / COUNT(DISTINCT Order_ID) AS AverageOrderValue
FROM [dbo].[SalesData];
