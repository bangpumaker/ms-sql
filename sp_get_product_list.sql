CREATE  PROC usp_FindProductByUnitsInStock (
	@product_name VARCHAR(MAX)
	@product_unit_in_stock INT OUTPUT
) AS 
BEGIN 
	SELECT 
		ProductName,
		UnitsInStock
	FROM 
		Products
	WHERE 
		UnitsInStock = @product_unit_in_stock;
		
	SELECT @product_unit_in_stock = @@ROWCOUNT;
		
END;