select SalesOrderID as 'order id' , OrderDate as 'order date' , ShipDate= null from Sales.SalesOrderHeader
where ShipMethodID=0