SELECT
AVG(DATEDIFF(DAY, soh.OrderDate, soh.ShipDate)) AS AverageShippingTime,
COUNT(soh.SalesOrderID) AS TotalShippedOrders,
MAX(DATEDIFF(DAY, soh.OrderDate, soh.ShipDate)) AS MaxShippingTime,
MIN(DATEDIFF(DAY, soh.OrderDate, soh.ShipDate)) AS MinShippingTime
FROM
Sales.SalesOrderHeader soh
WHERE
soh.ShipDate IS NOT NULL
AND soh.OrderDate >= DATEADD(MONTH, -6, GETDATE());