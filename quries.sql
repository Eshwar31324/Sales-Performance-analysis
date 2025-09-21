/*Total sales by region*/

SELECT r.RegionName, SUM(p.Price * s.Quantity) AS TotalSales
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
JOIN Regions r ON c.RegionID = r.RegionID
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY r.RegionName
ORDER BY TotalSales DESC;


/*Top 5 selling products*/

SELECT p.ProductName, SUM(s.Quantity) AS UnitsSold
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY UnitsSold DESC
LIMIT 5;


/*Best salesperson by revenue*/

SELECT sp.Name AS Salesperson, SUM(p.Price * s.Quantity) AS Revenue
FROM Sales s
JOIN Salespersons sp ON s.SalespersonID = sp.SalespersonID
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY sp.Name
ORDER BY Revenue DESC
LIMIT 1;


/*Monthly sales trend*/

SELECT DATE_FORMAT(SaleDate, '%Y-%m') AS Month, SUM(p.Price * s.Quantity) AS TotalSales
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY DATE_FORMAT(SaleDate, '%Y-%m')
ORDER BY Month;


/*Top customers by spending*/

SELECT c.Name, SUM(p.Price * s.Quantity) AS TotalSpent
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY c.Name
ORDER BY TotalSpent DESC
LIMIT 3;
