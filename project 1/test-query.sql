--import các file csv vào SQL SERVER, đặt tên DB là Order
-- truy cập vào DB Order
USE [Order]
GO

-- Phần trăm order status delivered như thế nào?
SELECT  order_status, COUNT(order_status) order_amount, (SUM(COUNT(order_status)) OVER()) total_order, (COUNT(order_status)*100)/(SUM(COUNT(order_status)) OVER()) [percent]
FROM Orders O
GROUP BY order_status


-- Xác định mối quan hệ giữa bảng khách hàng và bảng order
SELECT C.customer_id, count(O.order_id) order_amount
FROM Orders O
JOIN Customers C
ON O.customer_id = C.customer_id
GROUP BY C.customer_id
ORDER BY count(O.order_id) DESC

-- Xác định quan hệ giữa giá bán, chi phí vận chuyển và tiền thanh toán

WITH 
payment(order_id, payment_value) AS
(
SELECT O.order_id, SUM(OP.payment_value)
FROM Orders O
JOIN OrderPayments OP
ON O.order_id = OP.order_id
WHERE order_status = 'delivered'
GROUP BY O.order_id
),
cost(order_id, price, freight_value, total_value) AS
(
SELECT O.order_id, SUM(price), SUM(freight_value),SUM(price) + SUM(freight_value)
FROM Orders O
JOIN OrderItems OI
ON O.order_id = OI.order_id
WHERE order_status = 'delivered'
GROUP BY O.order_id
)
SELECT C.order_id, C.price, C.freight_value, C.total_value, P.payment_value, (P.payment_value - C.total_value) extra_pay
FROM cost C
JOIN payment P
ON C.order_id = P.order_id
ORDER BY (P.payment_value - C.total_value) DESC



