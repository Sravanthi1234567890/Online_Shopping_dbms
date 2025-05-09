-- Creating Views for NewOnlineShoppingDB

-- 1. CustomerOrderSummary View
CREATE VIEW CustomerOrderSummary AS
SELECT 
    c.customer_id,
    c.name AS customer_name,
    c.email,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_spent
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name, c.email;


-- 2. OrderDetailsView
CREATE VIEW OrderDetailsView AS
SELECT 
    o.order_id,
    c.name AS customer_name,
    p.name AS product_name,
    od.quantity,
    od.price AS product_price,
    o.total_amount,
    o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id;


-- 3. PendingDeliveries View
CREATE VIEW PendingDeliveries AS
SELECT 
    d.delivery_id,
    o.order_id,
    c.name AS customer_name,
    d.delivery_date,
    d.delivery_status
FROM Delivery d
JOIN Orders o ON d.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id
WHERE d.delivery_status = 'Pending';


-- 4. PaymentStatusView
CREATE VIEW PaymentStatusView AS
SELECT 
    p.payment_id,
    o.order_id,
    c.name AS customer_name,
    o.total_amount,
    p.payment_method,
    p.payment_status,
    p.payment_date
FROM Payment p
JOIN Orders o ON p.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id;
