CREATE PROCEDURE usp_Find_Product2 (
	@min_unit_price AS DECIMAL,
	@max_unit_price AS DECIMAL
)
AS
BEGIN
    SELECT 
        ProductName, UnitPrice
    FROM 
        Products
	WHERE
		UnitPrice >= @min_unit_price AND
		UnitPrice <= @min_unit_price AND
END;