select SalesOrderID,OrderDate,TotalDue as 'order amt' from Sales.SalesOrderHeader
where YEAR(OrderDate)=2011