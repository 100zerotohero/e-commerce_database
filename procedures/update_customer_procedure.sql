CREATE PROCEDURE UpdateCustomerProcedure
(
    @CustomerID int,
    @FirstName varchar(50),
    @LastName varchar(50),
    @Email varchar(100),
    @Phone varchar(20),
    @Address varchar(255)
)
AS
BEGIN
    UPDATE Customers
    SET FirstName = @FirstName,
        LastName = @LastName,
        Email = @Email,
        Phone = @Phone,
        Address = @Address
    WHERE CustomerID = @CustomerID
END
