SELECT
p.Name AS ProductName,
p.ProductID,
pd.StandardCost AS ProductCost,
sod.UnitPrice AS SalesPrice,
(sod.UnitPrice - pd.StandardCost) AS ProfitMargin
FROM
Production.Product p
JOIN
Production.ProductCostHistory pd ON p.ProductID = pd.ProductID
JOIN
Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
WHERE
pd.StartDate = (SELECT MAX(StartDate) FROM Production.ProductCostHistory WHERE ProductID = p.ProductID)