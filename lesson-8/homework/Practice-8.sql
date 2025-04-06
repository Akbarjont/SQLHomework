1. select category, sum(stockquantity) totalnumberofproductsavailableineachcategory from Products group by category
2. select category, avg(price) theaveragepriceofproducts from Products where category = 'Electronics' group by category
3. select * from Customers where city like ('L%')
4. select * from Products where productname like ('%er')
5. select * from Customers where country like ('%a')
6. select top 1 price from Products
7. select *, iif(stockquantity<30,'Low Stock','Sufficient') as Sufficiency from Products
8. select country, count(customerid) as numberofcustomersineachcountry from Customers group by country
9. select min(quantity) as minquantityordered, max(quantity) as maxquantityordered from Orders 
10. select CustomerID from Orders where YEAR(OrderDate) = 2023 EXCEPT select CustomerID from Invoices
11. select productname from Products union all select productname from Products_Discounted
12. select productname from Products union select productname from Products_Discounted
13. select YEAR(orderdate), AVG(totalamount) from Orders group by YEAR(orderdate)
14. select *, case when Price<100 then 'Low' when price <=500 then 'Mid' when Price > 500 then 'High' end PriceCategory from Products 
15. select distinct(City) from Customers order by City
16. select ProductID, SUM(saleamount) from Sales group by ProductID
17. select ProductName from Products where ProductName LIKE ('%OO%')
18. select ProductID from Products INTERSECT select ProductID from Products_Discounted 
19. select top 3 TotalAmount, CustomerID from Invoices order by TotalAmount desc
20. select ProductID, ProductName from Products except select ProductID, ProductName from Products_Discounted
21. select ProductName, COUNT(saleid) from Products p join Sales s on p.ProductID=s.ProductID group by ProductName
22. select top 5 ProductID from Orders order by Quantity desc
