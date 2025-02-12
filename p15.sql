select SalesOrderID , DATEDIFF(DAY,orderdate,shipdate)as 'shiping time' 
from   Sales.SalesOrderHeader
where DATEDIFF(DAY,orderdate,shipdate) >7
