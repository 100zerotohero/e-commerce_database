CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Description TEXT,
    Category VARCHAR(50),
    StockQuantity INT,
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);
GO
-- adding data to the "Products" table
INSERT INTO Products (ProductID, Name, Price, Description, Category, StockQuantity, SupplierID)
VALUES
(1, 'Smartphone', 499.99, 'A high-end smartphone with latest features', 'Electronics', 100, 1),
(2, 'Laptop', 899.99, 'A powerful laptop for work and entertainment', 'Electronics', 50, 1),
(3, 'Headphones', 99.99, 'Wireless headphones with noise-cancellation', 'Electronics', 200, 2),
(4, 'T-shirt', 19.99, 'Comfortable cotton t-shirt in various colors', 'Clothing', 300, 3),
(5, 'Jeans', 39.99, 'Stylish denim jeans for everyday wear', 'Clothing', 150, 3),
(6, 'Running Shoes', 79.99, 'Lightweight and durable running shoes', 'Footwear', 100, 4);
GO
-- checking the data in the "Products" table
SELECT * FROM Products;
GO
