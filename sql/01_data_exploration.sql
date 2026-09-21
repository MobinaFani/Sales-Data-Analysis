-- Sales Data Exploration
-- Basic overview of the dataset

-- 1. Total number of rows
SELECT COUNT(*) AS TotalRows
FROM [dbo].[SalesData];


-- 2. Sample of the dataset
SELECT TOP(5) *
FROM [dbo].[SalesData];


-- 3. Available categories
SELECT DISTINCT Category
FROM [dbo].[SalesData];


-- 4. Number of rows by category
SELECT 
    Category,
    COUNT(*) AS RowCount
FROM [dbo].[SalesData]
GROUP BY Category;


-- 5. Overall KPIs
SELECT 
    SUM(Sales) AS TotalSales,
    AVG(Sales) AS AverageSalesPerRow,
    COUNT(DISTINCT Order_ID) AS TotalOrders,
    COUNT(DISTINCT Customer_ID) AS TotalCustomers
FROM [dbo].[SalesData];
