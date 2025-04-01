Select ProductName Name from Products;
select * from Customers Client
select ProductName from Products UNION select ProductName from Products_Discounted
select ProductID, ProductName, Price, Category, StockQuantity from Products  INTERSECT select ProductID, ProductName, Price, Category, StockQuantity from Products_Discounted
select distinct FirstName, Country from Customers


