select top 11 Product.Name ,product.ProductID from Sales.SalesOrderDetail full join Production.Product on SalesOrderDetail.ProductID=Product.ProductID
order by ListPrice desc
