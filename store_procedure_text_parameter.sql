CREATE PROCEDURE uspFindProductWithName (
	@min_unit_price AS DECIMAL,
	@max_unit_price AS DECIMAL,
	@name AS VARCHAR(max)
)
AS
BEGIN
    SELECT 
        ProductName, UnitPrice
    FROM 
        Products
	WHERE
		UnitPrice >= @min_unit_price AND
		UnitPrice <= @max_unit_price AND
		ProductName LIKE '%' + @name + '%'
	ORDER BY
		UnitPrice;
END;