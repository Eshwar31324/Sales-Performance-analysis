-- Regions
INSERT INTO Regions (RegionName) VALUES ('North'), ('South'), ('East'), ('West');

-- Products
INSERT INTO Products (ProductName, Category, Price) VALUES
('Laptop', 'Electronics', 60000),
('Mobile Phone', 'Electronics', 30000),
('Shoes', 'Fashion', 4000),
('Refrigerator', 'Appliances', 25000);

-- Customers
INSERT INTO Customers (Name, Email, City, RegionID) VALUES
('Eshwar', 'eshwar@gmail.com', 'Chennai', 2),
('Priya', 'priya@gmail.com', 'Delhi', 1),
('Arjun', 'arjun@gmail.com', 'Mumbai', 4);

-- Salespersons
INSERT INTO Salespersons (Name, RegionID) VALUES
('Ravi', 2),
('Sneha', 1),
('Karan', 4);

-- Sales Transactions
INSERT INTO Sales (CustomerID, ProductID, SalespersonID, Quantity, SaleDate) VALUES
(1, 1, 1, 2, '2025-09-01'),
(2, 2, 2, 1, '2025-09-02'),
(3, 3, 3, 3, '2025-09-05'),
(1, 4, 1, 1, '2025-09-10');
