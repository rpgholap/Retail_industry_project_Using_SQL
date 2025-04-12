# INSERT QUERIES TO INSERT VALUES IN REPECTIVE TABLES 

INSERT INTO Products VALUES (1, 'Laptop', 'Electronics', 1200.00, 50);
INSERT INTO Products VALUES (2, 'Smartphone', 'Electronics', 800.00, 100);
INSERT INTO Products VALUES (3, 'Headphones', 'Accessories', 150.00, 200);
INSERT INTO Products VALUES (4, 'LED TV', 'Electronics', 1000.00, 100);


INSERT INTO Customers VALUES (1, 'John Doe', 'johndoe@example.com', '555-1234', '123 Elm St');
INSERT INTO Customers VALUES (2, 'Jane Smith', 'janesmith@example.com', '555-5678', '456 Oak St');

INSERT INTO Orders VALUES (1, 1, '2024-10-20', 1950.00);
INSERT INTO Orders VALUES (2, 2, '2024-10-21', 950.00);

INSERT INTO OrderDetails VALUES (1, 1, 1, 1, 1200.00);
INSERT INTO OrderDetails VALUES (2, 1, 3, 5, 750.00);
INSERT INTO OrderDetails VALUES (3, 2, 2, 1, 800.00);
INSERT INTO OrderDetails VALUES (4, 2, 3, 1, 150.00);


# List all customers:
SELECT * FROM Customers;

# Find all orders placed by a specific customer
SELECT o.OrderID, o.OrderDate, o.TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.CustomerName = 'John Doe';


# Get the total sales by product category
SELECT p.Category, SUM(od.LineTotal) AS TotalSales
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.Category;

# Find all orders placed within the last month
SELECT * FROM Orders
WHERE OrderDate > DATE_SUB(NOW(), INTERVAL 1 MONTH);

# Get the most popular product (based on quantity sold)
SELECT p.ProductName, SUM(od.Quantity) AS TotalSold
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSold DESC
LIMIT 1;






