CREATE VIEW CustomersView AS
SELECT c.customer_id, 
c.first_name,
c.last_name,
c.email,
c.phone_number,
a.street_address,
a.city, 
a.postal_code, 
a.country
FROM customers c
JOIN addresses a ON c.address_id = a.address_id;
