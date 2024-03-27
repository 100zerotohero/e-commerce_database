DROP TRIGGER IF EXISTS SendNotificationTrigger;
DELIMITER //
CREATE TRIGGER SendNotificationTrigger
AFTER UPDATE ON deliveries
FOR EACH ROW
BEGIN
    DECLARE customer_email VARCHAR(255);
    
    SELECT email INTO customer_email 
    FROM customers 
    WHERE customer_id = NEW.customer_id;
    
    IF NEW.delivery_status <> OLD.delivery_status THEN
        INSERT INTO notifications (customer_id, message, created_at)
        VALUES (NEW.customer_id, CONCAT('Your delivery status has been updated to ', NEW.delivery_status), NOW());
        
        -- Wysłanie powiadomienia mailowego do klienta
        -- INSERT INTO email_queue (recipient, subject, message, sent_at) VALUES (customer_email, 'Delivery Status Update', CONCAT('Your delivery status has been updated to ', NEW.delivery_status), NOW()); 
    END IF;
END//
DELIMITER ;
