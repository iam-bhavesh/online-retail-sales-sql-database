-- insert_sample_data.sql
-- Insert sample data into tables

-- Categories
INSERT INTO Categories (CategoryName) VALUES
('Electronics'),
('Books'),
('Clothing'),
('Home & Kitchen');

-- Suppliers
INSERT INTO Suppliers (Name, ContactInfo) VALUES
('TechCorp', 'contact@techcorp.com'),
('BookWorld', 'info@bookworld.com'),
('FashionHub', 'support@fashionhub.com');

-- Products
INSERT INTO Products (Name, CategoryID, Price, SupplierID, Stock, Rating) VALUES
('Laptop Model A', 1, 1200.00, 1, 50, 4.5),
('Bluetooth Headphones', 1, 150.00, 1, 200, 4.0),
('Thriller Novel', 2, 20.00, 2, 100, 4.7),
('T-Shirt', 3, 15.00, 3, 300, 4.2),
('Coffee Maker', 4, 75.00, 1, 80, 3.9);

-- Customers
INSERT INTO Customers (Name, Email, City, RegistrationDate) VALUES
('Alice Johnson', 'alice@example.com', 'New York', '2022-01-15'),
('Bob Smith', 'bob@example.com', 'Los Angeles', '2022-03-22'),
('Carol Davis', 'carol@example.com', 'Chicago', '2023-02-10');

-- Orders
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2023-06-01', 1230.00),
(2, '2023-06-05', 20.00),
(3, '2023-06-07', 90.00);

-- OrderDetails
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 1, 1, 1200.00),
(1, 2, 2, 15.00),
(2, 3, 1, 20.00),
(3, 5, 1, 75.00),
(3, 4, 1, 15.00);

-- Reviews
INSERT INTO Reviews (ProductID, CustomerID, Rating, Comment, ReviewDate) VALUES
(1, 1, 5, 'Great laptop, very fast.', '2023-06-10'),
(3, 2, 4, 'Enjoyed the book.', '2023-06-12'),
(4, 3, 3, 'Good quality t-shirt.', '2023-06-15');
