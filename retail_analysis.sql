-- View Dataset
SELECT *
FROM online_retail
LIMIT 10;

-- Revenue Calculation
SELECT 
    Description,
    Quantity,
    UnitPrice,
    (Quantity * UnitPrice) AS Revenue
FROM online_retail
LIMIT 10;

-- Total Revenue
SELECT 
    SUM(Quantity * UnitPrice) AS Total_Revenue
FROM online_retail;

-- Top Products by Revenue
SELECT 
    Description,
    SUM(Quantity * UnitPrice) AS Revenue
FROM online_retail
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 10;

-- Country-wise Revenue
SELECT 
    Country,
    SUM(Quantity * UnitPrice) AS Revenue
FROM online_retail
GROUP BY Country
ORDER BY Revenue DESC
LIMIT 10;

-- Top Customers
SELECT 
    CustomerID,
    SUM(Quantity * UnitPrice) AS Revenue
FROM online_retail
GROUP BY CustomerID
ORDER BY Revenue DESC
LIMIT 10;

-- Best-Selling Products
SELECT 
    Description,
    SUM(Quantity) AS Total_Quantity_Sold
FROM online_retail
GROUP BY Description
ORDER BY Total_Quantity_Sold DESC
LIMIT 10;