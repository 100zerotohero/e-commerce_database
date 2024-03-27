CREATE TABLE Shipments (
    shipment_id INT PRIMARY KEY,
    transaction_id INT,
    shipment_date DATE,
    status VARCHAR(50),
    estimated_delivery_date DATE,
    actual_delivery_date DATE,
    shipping_method VARCHAR(50),
    shipping_cost DECIMAL(10, 2),
    shipping_address VARCHAR(100),
    shipping_city VARCHAR(50),
    shipping_country VARCHAR(50)
);
