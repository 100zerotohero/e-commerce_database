CREATE PROCEDURE TrackShipmentProcedure
@ShipmentID INT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Status VARCHAR(50);
    SELECT @Status = Status
    FROM Shipments
    WHERE ShipmentID = @ShipmentID;
    IF @Status IS NOT NULL
    BEGIN
        SELECT 'Shipment ID: ' + CAST(@ShipmentID AS VARCHAR) + ', Status: ' + @Status AS 'Shipment Information';
    END
    ELSE
    BEGIN
        SELECT 'Shipment ID: ' + CAST(@ShipmentID AS VARCHAR) + ' not found.';
    END
END
GO
