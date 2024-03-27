CREATE VIEW ShipmentsView AS
SELECT s.shipment_id, 
s.shipment_date, 
s.status, 
c.customer_name, 
c.customer_address,
p.product_name, 
p.product_price,
sh.shipping_method, 
sh.shipping_cost
FROM Shipments s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Products p ON s.product_id = p.product_id
JOIN Shipping sh ON s.shipping_id = sh.shipping_id;
