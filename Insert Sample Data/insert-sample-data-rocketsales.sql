-- Insert Sample Data 

USE rocketsales;

-- Insert Customers
INSERT INTO Customer (FirstName, LastName, Email, RegistrationDate) VALUES
('Alice', 'Smith', 'alice.smith@example.com', '2023-01-10'),
('Bob', 'Johnson', 'bob.johnson@example.com', '2023-02-15'),
('Carol', 'Williams', 'carol.williams@example.com', '2023-03-20'),
('David', 'Brown', 'david.brown@example.com', '2023-04-22'),
('Eva', 'Jones', 'eva.jones@example.com', '2023-05-30');

-- Insert Addresses
INSERT INTO Address (CustomerID, Street, City, ZipCode, Country) VALUES
(1, '123 Elm St', 'New York', '10001', 'USA'),
(2, '456 Oak St', 'Los Angeles', '90001', 'USA'),
(3, '789 Maple Ave', 'Chicago', '60601', 'USA'),
(4, '101 Pine Rd', 'Houston', '77001', 'USA'),
(5, '202 Cedar Ln', 'Phoenix', '85001', 'USA');

-- Insert Suppliers
INSERT INTO Supplier (Name, ContactEmail, Phone) VALUES
('Tech Supplies Inc', 'contact@techsupplies.com', '123-456-7890'),
('Gadgets Wholesale', 'sales@gadgetswholesale.com', '987-654-3210'),
('ElectroParts', 'support@electroparts.com', '555-123-4567');

-- Insert Categories
INSERT INTO Category (Name, Description) VALUES
('Laptops', 'Portable computers'),
('Desktops', 'Stationary computers'),
('Accessories', 'Computer accessories'),
('Storage', 'Hard drives and SSDs'),
('Networking', 'Networking equipment');

-- Insert Products
INSERT INTO Product (Name, Description, Price, StockQuantity, SupplierID) VALUES
('Gaming Laptop X1', 'High performance gaming laptop', 1200.00, 50, 1),
('Office Desktop D10', 'Efficient desktop for office use', 800.00, 30, 2),
('Wireless Mouse W5', 'Ergonomic wireless mouse', 25.99, 150, 3),
('External SSD 1TB', 'Fast external solid state drive', 150.00, 60, 1),
('Router R100', 'High speed wireless router', 90.00, 40, 2);

-- Insert ProductCategory
INSERT INTO ProductCategory (ProductID, CategoryID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insert Orders
INSERT INTO `Order` (CustomerID, OrderDate, Status, TotalAmount, ShippingAddressID) VALUES
(1, '2023-07-10 15:00:00', 'Delivered', 1245.99, 1),
(2, '2023-07-12 12:30:00', 'Shipped', 800.00, 2),
(3, '2023-07-15 13:45:00', 'Pending', 170.00, 3),
(4, '2023-07-16 16:20:00', 'Delivered', 90.00, 4),
(5, '2023-07-18 10:15:00', 'Cancelled', 25.99, 5);

-- Insert OrderItem
INSERT INTO OrderItem (OrderID, ProductID, Quantity, Subtotal) VALUES
(1, 1, 1, 1200.00),
(1, 3, 1, 25.99),
(2, 2, 1, 800.00),
(3, 4, 1, 150.00),
(3, 3, 1, 25.99),
(4, 5, 1, 90.00),
(5, 3, 1, 25.99);

-- Insert Payments
INSERT INTO Payment (OrderID, PaymentMethod, PaymentDate, Amount, Status) VALUES
(1, 'Credit Card', '2023-07-10 15:10:00', 1245.99, 'Paid'),
(2, 'PayPal', '2023-07-12 12:45:00', 800.00, 'Paid'),
(3, 'Bank Transfer', '2023-07-15 14:00:00', 170.00, 'Pending'),
(4, 'Credit Card', '2023-07-16 16:30:00', 90.00, 'Paid'),
(5, 'Credit Card', '2023-07-18 10:30:00', 25.99, 'Failed');

-- Insert Shipments
INSERT INTO Shipment (OrderID, Carrier, TrackingNumber, ShipmentDate) VALUES
(1, 'FedEx', 'TRACK1234', '2023-07-11'),
(2, 'UPS', 'TRACK5678', '2023-07-13'),
(4, 'DHL', 'TRACK9012', '2023-07-17');

-- Insert Reviews
INSERT INTO Review (CustomerID, ProductID, Rating, ReviewText, ReviewDate) VALUES
(1, 1, 5, 'Excellent gaming laptop, very fast!', '2023-07-20 10:00:00'),
(2, 2, 4, 'Good value for office work.', '2023-07-21 10:00:00'),
(3, 4, 5, 'Fast and reliable SSD.', '2023-07-22 10:00:00'),
(4, 5, 3, 'Router sometimes drops connection.', '2023-07-23 10:00:00'),
(5, 3, 4, 'Comfortable mouse.', '2023-07-24 10:00:00');

-- Insert Carts
INSERT INTO Cart (CustomerID, CreatedDate) VALUES
(1, '2023-07-25 10:00:00'),
(2, '2023-07-25 10:05:00'),
(3, '2023-07-25 10:10:00'),
(4, '2023-07-25 10:15:00'),
(5, '2023-07-25 10:20:00');

-- Insert CartItems
INSERT INTO CartItem (CartID, ProductID, Quantity) VALUES
(1, 5, 1),
(2, 1, 2),
(3, 3, 1),
(4, 4, 3),
(5, 2, 1);

-- Insert Wishlists
INSERT INTO Wishlist (CustomerID, CreatedDate) VALUES
(1, '2023-07-26 08:00:00'),
(2, '2023-07-26 08:05:00'),
(3, '2023-07-26 08:10:00'),
(4, '2023-07-26 08:15:00'),
(5, '2023-07-26 08:20:00');

-- Insert WishlistItems
INSERT INTO WishlistItem (WishlistID, ProductID, AddedDate) VALUES
(1, 1, '2023-07-26 10:00:00'),
(2, 2, '2023-07-26 10:00:00'),
(3, 3, '2023-07-26 10:00:00'),
(4, 4, '2023-07-26 10:00:00'),
(5, 5, '2023-07-26 10:00:00');
