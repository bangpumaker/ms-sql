CREATE PROCEDURE usp_Find_Product (
	@min_unit_price AS DECIMAL
)
AS
BEGIN
    SELECT 
        ProductName, UnitPrice
    FROM 
        Products
	WHERE
		UnitPrice >= @min_unit_price
END;