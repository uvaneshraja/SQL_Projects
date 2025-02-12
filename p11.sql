select CustomerID , sum(TotalDue) as 'total purchase amt'
from Sales.SalesOrderHeader
where TotalDue > 10000
group by CustomerID
order by SUM(TotalDue)