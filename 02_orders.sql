DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer(
    CustomerID SERIAL PRIMARY KEY,
    UserName VARCHAR(50) NOT NULL,
    Address VARCHAR(200) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL
);
CREATE TABLE Orders(
    OrderID SERIAL PRIMARY KEY,
    CustomerID INTEGER NOT NULL,
    OrderDate DATE NOT NULL,
    TotalAmount NUMERIC(8,2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) 
);

INSERT INTO Customer (UserName, Address, PhoneNumber)
VALUES 
    ('Olena', 'Kyiv, Khreshchatyk 1', '+380501112233'),
    ('Dmitro', 'Kyiv, Bankova 1', '+380063322111'),
    ('Volodymir', 'Dnipro, Dynamo 100', '+380072233111');
INSERT INTO Orders ( CustomerID, OrderDate, TotalAmount)
VALUES
    (1, '2026-11-18', 38.03),
    (2, '2025-10-10', 543.20),
    (3, '2024-12-25', 212.99);

SELECT * FROM Customer;
SELECT * FROM Orders;