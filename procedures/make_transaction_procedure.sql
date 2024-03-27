CREATE PROCEDURE MakeTransactionProcedure
(
    @ProductID INT,
    @CustomerID INT,
    @Quantity INT,
    @TotalPrice DECIMAL(10, 2)
)
AS
BEGIN
    DECLARE @TransactionID INT
    -- Dodanie nowej transakcji
    INSERT INTO Transactions (ProductID, CustomerID, Quantity, TotalPrice, TransactionDate)
    VALUES (@ProductID, @CustomerID, @Quantity, @TotalPrice, GETDATE())
    -- Pobranie ID nowo dodanej transakcji
    SELECT @TransactionID = SCOPE_IDENTITY()
    -- Aktualizacja stanu magazynowego produktu
    UPDATE Products
    SET StockLevel = StockLevel - @Quantity
    WHERE ProductID = @ProductID
    -- Zapisanie informacji o transakcji w logach
    INSERT INTO TransactionLogs (TransactionID, LogDate, LogDescription)
    VALUES (@TransactionID, GETDATE(), 'New transaction created')
    -- Zwrócenie ID nowo dodanej transakcji
    SELECT @TransactionID AS TransactionID
END
GO
