select SalesPersonID as 'employee id' ,AVG( DATEDIFF(DAY,orderdate,shipdate)) as 'average processing time(days)' 
from   Sales.SalesOrderHeader
group by SalesPersonID