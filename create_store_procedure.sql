CREATE PROCEDURE usp_ProductList
AS
BEGIN
    SELECT 
        ProductName, QuantityPerUnit
    FROM 
        Products
    ORDER BY 
        ProductName;
END;