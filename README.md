# E-commerce Database Project
This project aims to create a comprehensive database for an e-commerce company. The code is organized into folders and files as follows:
## Tables:
- **Products.sql** - contains table definitions for products, including information such as product ID, name, price, description, etc.
- **Transactions.sql** - contains table definitions for transactions, including information such as transaction ID, customer ID, date, amount, etc.
- **Customers.sql** - contains table definitions for customers, including information such as customer ID, first name, last name, address, email, etc.
- **Shipments.sql** - contains table definitions for shipments, including information such as shipment ID, transaction ID, delivery date, status, etc.
## Views:
- **ProductsView.sql** - contains a view definition for products, which combines data from the products table with other related tables for easier access to information.
- **TransactionsView.sql** - contains a view definition for transactions, which combines data from the transactions table with other related tables for easier access to information.
- **CustomersView.sql** - contains a view definition for customers, which combines data from the customers table with other related tables for easier access to information.
- **ShipmentsView.sql** - contains a view definition for shipments, which combines data from the shipments table with other related tables for easier access to information.
## Procedures:
- **AddProductProcedure.sql** - contains a procedure definition for adding a product to the database.
- **MakeTransactionProcedure.sql** - contains a procedure definition for creating a new transaction in the database.
- **UpdateCustomerProcedure.sql** - contains a procedure definition for updating customer data in the database.
- **TrackShipmentProcedure.sql** - contains a procedure definition for tracking a shipment in the database.
## Triggers:
- **UpdateStockTrigger.sql** - contains a trigger definition that automatically updates the product stock status after a transaction is made.
- **SendNotificationTrigger.sql** - contains a trigger definition that sends a notification to the customer about changes in shipment status.
This project provides a structured and organized approach to managing the e-commerce company's database operations.
