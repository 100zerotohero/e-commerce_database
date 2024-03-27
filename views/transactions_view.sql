CREATE VIEW TransactionsView AS
SELECT 
    t.transaction_id,
    t.transaction_date,
    t.customer_id,
    c.customer_name,
    c.customer_email,
    p.product_id,
    p.product_name,
    p.product_price,
    td.quantity,
    td.total_price,
    s.supplier_id,
    s.supplier_name,
    d.delivery_id,
    d.delivery_date,
    d.delivery_status
FROM transactions t
JOIN customers c ON t.customer_id = c.customer_id
JOIN transaction_details td ON t.transaction_id = td.transaction_id
JOIN products p ON td.product_id = p.product_id
JOIN suppliers s ON p.supplier_id = s.supplier_id
LEFT JOIN deliveries d ON t.delivery_id = d.delivery_id;
