USE NewOnlineShoppingDB;

-- 1️⃣ Customers Table
INSERT INTO Customers (name, email, phone, address) VALUES
('Aarav Sharma', 'aarav@gmail.com', '9876543210', 'Mumbai, India'),
('Meera Iyer', 'meera@gmail.com', NULL, 'Chennai, India'),
('Rohan Gupta', 'rohan@gmail.com', '9988776655', NULL),
('Sana Khan', 'sana@gmail.com', '9765432109', 'Bangalore, India'),
('Aditya Patel', 'aditya@gmail.com', NULL, NULL),
('Priya Das', 'priya@gmail.com', '9876501234', 'Kolkata, India');

-- 2️⃣ Products Table
INSERT INTO Products (name, price, stock_quantity) VALUES
('Laptop', 55000.00, 10),
('Smartphone', 20000.00, 25),
('Wireless Mouse', 799.00, NULL),
('Keyboard', 1199.00, 30),
('Earphones', 499.00, 100),
('Monitor', 8500.00, NULL);

-- 3️⃣ Orders Table
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2025-03-01', 60000.00),
(2, '2025-03-02', 25000.00),
(3, NULL, 3500.00),
(4, '2025-03-06', 15000.00),
(5, NULL, 2000.00),
(6, '2025-03-08', NULL);

-- 4️⃣ OrderDetails Table
INSERT INTO OrderDetails (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 55000.00),
(1, 3, 1, 799.00),
(2, 2, NULL, 20000.00),
(3, 4, 2, 2398.00),
(4, 5, 3, NULL),
(5, 6, 1, 8500.00);

-- 5️⃣ Delivery Table
INSERT INTO Delivery (order_id, delivery_date, delivery_status) VALUES
(1, '2025-03-05', 'Delivered'),
(2, NULL, 'Pending'),
(3, '2025-03-10', 'Shipped'),
(4, NULL, 'Cancelled'),
(5, '2025-03-12', 'Delivered'),
(6, NULL, 'Pending');

-- 6️⃣ Payment Table
INSERT INTO Payment (order_id, payment_date, payment_method, payment_status) VALUES
(1, '2025-03-01', 'Credit Card', 'Completed'),
(2, '2025-03-02', 'UPI', 'Completed'),
(3, NULL, 'COD', 'Pending'),
(4, '2025-03-06', NULL, 'Failed'),
(5, '2025-03-07', 'Debit Card', 'Completed'),
(6, NULL, 'Net Banking', 'Pending');
