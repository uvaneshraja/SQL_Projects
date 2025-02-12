SELECT
p.Name AS ProductName,
p.ProductID,
pi.Quantity AS QuantityInStock
FROM
Production.Product p
JOIN
Production.ProductInventory pi ON p.ProductID = pi.ProductID
WHERE
pi.Quantity < p.ReorderPoint;