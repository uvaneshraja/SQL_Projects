select top 5 Product.Name as 'product name ', ProductCategory.Name as 'product category' , count(SalesOrderDetail.OrderQty) as 'total quantity sold', sum(SalesOrderDetail.LineTotal)'total revenue' from Production.Product inner join Production.ProductCategory on Product.ProductID=ProductCategory.ProductCategoryID ,sales.SalesOrderDetail inner join Sales.SalesOrderHeader on SalesOrderDetail.OrderQty= SalesOrderHeader.OrderDate
group by SalesOrderDetail.OrderQty,product.Name, ProductCategory.Name
order by SalesOrderDetail.OrderQty DESC
