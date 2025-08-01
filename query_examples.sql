-- query_examples.sql
-- Sample queries to analyze sales data

-- 1. List all products in the 'Electronics' category
SELECT p.ProductID, p.Name, p.Price, p.Stock
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Electronics';

-- 2. Find top 5 best-selling products based on quantity sold
SELECT p.Name, SUM(od.Quantity) AS TotalSold
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductID
ORDER BY TotalSold DESC
LIMIT 5;

-- 3. Calculate total monthly sales amount
SELECT DATE_FORMAT(o.OrderDate, '%Y-%m') AS SalesMonth,
       SUM(o.TotalAmount) AS TotalSales
FROM Orders o
GROUP BY SalesMonth
ORDER BY SalesMonth;

-- 4. Show purchase history for customer "Alice Johnson"
SELECT o.OrderID, o.OrderDate, p.Name, od.Quantity, od.UnitPrice
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
WHERE c.Name = 'Alice Johnson'
ORDER BY o.OrderDate DESC;

-- 5. Average review rating per product
SELECT p.Name, AVG(r.Rating) AS AverageRating
FROM Products p
LEFT JOIN Reviews r ON p.ProductID = r.ProductID
GROUP BY p.ProductID;

-- 6. Identify low-stock products (stock less than 50)
SELECT Name, Stock
FROM Products
WHERE Stock < 50;
