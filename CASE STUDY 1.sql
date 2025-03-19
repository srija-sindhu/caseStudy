

-- Create the database
CREATE DATABASE TechShop;
USE TechShop;

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT identity PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) ,
    Phone VARCHAR(15),
    Address varchar(100)
);

-- Create Products table
CREATE TABLE Products (
    ProductID INT identity PRIMARY KEY,
    ProductName VARCHAR(100),
    Description varchar(max),
    Price bigint
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT identity PRIMARY KEY,
    CustomerID INT,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


-- Create OrderDetails table
CREATE TABLE OrderDetails (
    OrderDetailID INT identity PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create Inventory table
CREATE TABLE Inventory (
    InventoryID INT identity PRIMARY KEY,
    ProductID INT,
    QuantityInStock INT,
    LastStockUpdate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert sample records into Customers table
INSERT INTO Customers (FirstName, LastName, Email, Phone, Address) VALUES
('John', 'Doe', 'john.doe@email.com', '1234567890', '123 Elm Street'),
('Jane', 'Smith', 'jane.smith@email.com', '9876543210', '456 Oak Avenue'),
('Alice', 'Johnson', 'alice.johnson@email.com', '1122334455', '789 Pine Road'),
('Bob', 'Brown', 'bob.brown@email.com', '5566778899', '321 Maple Lane'),
('Charlie', 'Davis', 'charlie.davis@email.com', '9988776655', '654 Birch Street'),
('David', 'Wilson', 'david.wilson@email.com', '7788990011', '987 Cedar Avenue'),
('Eve', 'Martinez', 'eve.martinez@email.com', '6655443322', '159 Willow Drive'),
('Frank', 'Garcia', 'frank.garcia@email.com', '3322114455', '753 Spruce Court'),
('Grace', 'Lopez', 'grace.lopez@email.com', '2233445566', '852 Redwood Blvd'),
('Henry', 'Hernandez', 'henry.hernandez@email.com', '1122446688', '951 Aspen Way');


-- Insert sample records into Products table
INSERT INTO Products (ProductName, Description, Price) VALUES
('Laptop', 'High performance laptop', 1200),
('Smartphone', 'Latest model smartphone', 800),
('Tablet', '10-inch screen tablet', 500),
('Smartwatch', 'Water-resistant smartwatch', 250),
('Headphones', 'Noise-canceling headphones', 150),
('Gaming Console', 'Next-gen gaming console', 600),
('Wireless Mouse', 'Ergonomic wireless mouse', 40),
('Keyboard', 'Mechanical gaming keyboard', 100),
('Monitor', '27-inch 4K monitor', 350),
('External Hard Drive', '2TB external HDD', 120);

-- Insert sample records into Orders table
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2024-03-15', 2000),
(2, '2024-03-16', 500),
(3, '2024-03-17', 800),
(4, '2024-03-18', 1200),
(5, '2024-03-19', 150),
(6, '2024-03-20', 600),
(7, '2024-03-21', 40),
(8, '2024-03-22', 100),
(9, '2024-03-23', 350),
(10, '2024-03-24', 120);

-- Insert sample records into OrderDetails table
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 1),
(3, 4, 1),
(4, 5, 2),
(5, 6, 1),
(6, 7, 1),
(7, 8, 1),
(8, 9, 1),
(9, 10, 1);

-- Insert sample records into Inventory table
INSERT INTO Inventory (ProductID, QuantityInStock, LastStockUpdate) VALUES
(1, 50, '2024-03-10'),
(2, 40, '2024-03-10'),
(3, 30, '2024-03-10'),
(4, 20, '2024-03-10'),
(5, 60, '2024-03-10'),
(6, 25, '2024-03-10'),
(7, 100, '2024-03-10'),
(8, 80, '2024-03-10'),
(9, 35, '2024-03-10'),
(10, 45, '2024-03-10');
