SELECT TOP 5
SP.BusinessEntityID,
P.FirstName + ' ' + P.LastName AS SalesRepName,
SUM(SOH.TotalDue) AS TotalSales
FROM Sales.SalesPerson SP
JOIN Sales.SalesOrderHeader SOH ON SP.BusinessEntityID = SOH.SalesPersonID
JOIN Person.Person P ON SP.BusinessEntityID = P.BusinessEntityID
GROUP BY SP.BusinessEntityID, P.FirstName, P.LastName
ORDER BY TotalSales DESC;