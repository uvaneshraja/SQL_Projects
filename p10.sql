select CustomerID,AVG(TotalDue) as average
from Sales.SalesOrderHeader
group by CustomerID