select CustomerID , COUNT(SalesOrderID) 'total orders' from Sales.SalesOrderHeader
group by CustomerID
