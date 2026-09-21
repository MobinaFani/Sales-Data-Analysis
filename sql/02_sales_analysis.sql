-- Sales Analysis

-- 1. Sales by Category
SELECT 
    Category,
    SUM(Sales) AS TotalSales
FROM [dbo].[SalesData]
GROUP BY Category
ORDER BY TotalSales DESC;


-- 2. Sales by Region
SELECT 
    Region,
    SUM(Sales) AS TotalSales
FROM [dbo].[SalesData]
GROUP BY Region
ORDER BY TotalSales DESC;


-- 3. Sales by Sub-Category
SELECT 
    Sub_Category,
    SUM(Sales) AS TotalSales
FROM [dbo].[SalesData]
GROUP BY Sub_Category
ORDER BY TotalSales DESC;


-- 4. Sales by Year
SELECT 
    YEAR(Order_Date) AS Year,
    SUM(Sales) AS TotalSales
FROM [dbo].[SalesData]
GROUP BY YEAR(Order_Date)
ORDER BY Year ASC;


-- 5. Sales by Region and Category
SELECT 
    Region,
    Category,
    SUM(Sales) AS TotalSales
FROM [dbo].[SalesData]
GROUP BY Region, Category
ORDER BY Region ASC, TotalSales DESC;


-- 6. Sales by Ship Mode
SELECT 
    Ship_Mode,
    SUM(Sales) AS TotalSales
FROM [dbo].[SalesData]
GROUP BY Ship_Mode
ORDER BY TotalSales DESC;


-- 7. Sales by Segment
SELECT 
    Segment,
    SUM(Sales) AS TotalSales
FROM [dbo].[SalesData]
GROUP BY Segment
ORDER BY TotalSales DESC;


-- 8. Top 5 Cities by Sales
SELECT TOP(5)
    City,
    SUM(Sales) AS TotalSales
FROM [dbo].[SalesData]
GROUP BY City
ORDER BY TotalSales DESC;
