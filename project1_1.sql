select format(orderDate ,'yyyy-MM') as month , sum(totaldue) as 'Total sales amount' , count(salesorderid) as 'total orders' , avg(totaldue) as 'average order value' 
from sales.SalesOrderHeader 
where OrderDate >= DATEADD(MONTH,-12,GETDATE())
group by OrderDate
order by month