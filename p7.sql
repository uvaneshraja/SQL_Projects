select * from Production.Product right join Sales.SalesOrderDetail on Product.ProductID=SalesOrderDetail.ProductID
where SalesOrderDetail.ProductID is null
