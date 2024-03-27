CREATE PROCEDURE AddProductProcedure
(
    @ProductName varchar(50),
    @ProductDescription varchar(255),
    @ProductPrice decimal,
    @ProductStock int
)
AS
BEGIN
    INSERT INTO Products (ProductName, ProductDescription, ProductPrice, ProductStock)
    VALUES (@ProductName, @ProductDescription, @ProductPrice, @ProductStock)
END
