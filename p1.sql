select 
SalesOrderID as 'order id',
OrderDate as 'order date' , 
TotalDue as 'order amount' 
from
Sales.SalesOrderHeader
where CustomerID=11000