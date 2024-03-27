CREATE VIEW ProductsView AS
SELECT 
    p.product_id,
    p.product_name,
    p.price,
    p.stock_quantity,
    c.category_name,
    b.brand_name
FROM products p
INNER JOIN categories c ON p.category_id = c.category_id
INNER JOIN brands b ON p.brand_id = b.brand_id;
