WITH SalesAndReturns AS (
SELECT
sod.ProductID,
SUM(sod.OrderQty) AS SoldQuantity,
SUM(CASE WHEN soh.Status = 5 THEN sod.OrderQty ELSE 0 END) AS ReturnedQuantity
FROM
Sales.SalesOrderDetail sod
JOIN
Sales.SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
WHERE
soh.OrderDate >= DATEADD(MONTH, -6, GETDATE())
GROUP BY
sod.ProductID
)
SELECT
p.Name AS ProductName,
p.ProductID,
sar.SoldQuantity,
sar.ReturnedQuantity,
(sar.ReturnedQuantity * 100.0 / sar.SoldQuantity) AS ReturnRate
FROM
SalesAndReturns sar
JOIN
Production.Product p ON sar.ProductID = p.ProductID
WHERE
sar.SoldQuantity > 0;