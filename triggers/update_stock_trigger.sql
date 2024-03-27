CREATE TRIGGER UpdateStockTrigger
AFTER INSERT ON Transactions
FOR EACH ROW
BEGIN
    IF NEW.transaction_type = 'purchase' THEN
        UPDATE Products
        SET stock = stock - NEW.quantity
        WHERE product_id = NEW.product_id;
    ELSEIF NEW.transaction_type = 'return' THEN
        UPDATE Products
        SET stock = stock + NEW.quantity
        WHERE product_id = NEW.product_id;
    END IF;
END;

