select customer.CustomerID as 'customer id' , count(SalesOrderHeader.SalesOrderID) as 'number of orders' from sales.Customer inner join sales.SalesOrderHeader on customer.CustomerID = SalesOrderHeader.CustomerID
where OrderDate >= DATEADD(MONTH,-6,GETDATE())
group by customer.CustomerID
having count(SalesOrderHeader.SalesOrderID) > 3;



