1. select o.OrderID, C.FirstName, o.OrderDate from Orders o join Customers c on o.CustomerID=c.CustomerID where YEAR(o.OrderDate)>2022
2. select e.Name, d.DepartmentName from Employees e join Departments d on e.DepartmentID=d.DepartmentID where d.DepartmentName='Sales' or d.DepartmentName='Marketing'
3. select d.DepartmentName, E.Name, e.Salary MaxSalary from Departments d join Employees e on d.DepartmentID=e.DepartmentID where e.Salary=(select MAX(e2.Salary) from Employees e2 where e2.DepartmentID=d.DepartmentID)
4. select c.FirstName, o.OrderID, o.OrderDate from Customers c join Orders o on c.CustomerID=o.CustomerID where Country='USA' and YEAR(o.OrderDate)=2023
5. select c.FirstName CustomerName, ISNULL(o.TotalOrders,0) TotalOrders from Customers c left join (select CustomerID, COUNT(*) as TotalOrders from Orders o group by CustomerID) o on o.CustomerID=c.customerid
6. select * from Products p join Suppliers s on p.SupplierID=s.SupplierID where s.SupplierName = 'Gadget Supplies' or s.SupplierName= 'Clothing Mart'
7. select c.FirstName, o.OrderDate MostRecentOrderDate from Orders o full join customers c on o.CustomerID=c.CustomerID where O.OrderDate=(select max(o2.OrderDate) from Orders o2 where o2.CustomerID=C.CustomerID) or o.OrderDate is null

8.1. select c.FirstName, o.OrderID, SUM(o.TotalAmount) OrderTotal from Orders o full join customers c on o.CustomerID=c.CustomerID group by c.FirstName, o.OrderID having SUM(o.TotalAmount) > 500
8.2. select c.FirstName, o.OrderID, o.TotalAmount OrderTotal from Orders o full join customers c on o.CustomerID=c.CustomerID where o.TotalAmount > 500

9. select p.ProductName, s.SaleDate, s.SaleAmount from Products p full join Sales s on p.ProductID=s.ProductID where YEAR(s.saledate)=2022 or s.SaleAmount>400

10.1. select p.ProductID, p.ProductName, coalesce(sum(s.SaleAmount), 0) TotalSalesAmount from Products p left join Sales s on p.ProductID=s.ProductID group by p.ProductID, p.ProductName
10.2. select p.ProductID, coalesce(s.totalsales,0) as TotalSalesAmount from Products p left join (select ProductID, sum(s.SaleAmount) as TotalSales from Sales s group by ProductID) s on p.ProductID=S.ProductID
10.3. select p.ProductID, isnull(s.totalsales,0) as TotalSalesAmount from Products p left join (select ProductID, sum(s.SaleAmount) as TotalSales from Sales s group by ProductID) s on p.ProductID=S.ProductID

11.1. select e.Name, d.DepartmentName, e.Salary from Employees e full join Departments d on e.DepartmentID=d.DepartmentID where d.DepartmentName='Human Resources' and e.Salary>50000
11.2. select e.Name, d.DepartmentName, e.Salary from Employees e join (select * from Departments d where d.DepartmentName='Human Resources') d on e.DepartmentID=d.DepartmentID where e.Salary>50000

12. select p.ProductName, s.SaleDate, p.StockQuantity from Products p join Sales s on p.ProductID=s.ProductID where YEAR(s.SaleDate)=2023 and p.StockQuantity>50
13. select e.Name, d.DepartmentName, e.HireDate from Employees e join Departments d on e.DepartmentID=d.DepartmentID where d.DepartmentID=1 or YEAR(e.HireDate)>2020
14. select c.FirstName, o.OrderID, c.Address, o.OrderDate from Customers c join Orders o on c.CustomerID=o.CustomerID where c.Country='USA' and c.Address like ('____ %')
15. select p.ProductName, p.Category, s.SaleAmount from Products p join Sales s on p.ProductID=s.ProductID join Categories c on p.Category=c.CategoryID where c.CategoryName = 'Electronics' or s.SaleAmount>350

16.1. select c.CategoryName, count(p.StockQuantity) ProductCount from Categories c join products p on c.CategoryID=p.Category group by c.CategoryName
16.2. select c.CategoryName, p.ProductCount from Categories c join (select p2.Category, count(p2.StockQuantity) ProductCount from products p2 group by p2.Category) p on c.CategoryID=p.Category

17. select c.FirstName, c.City, o.OrderID, o.TotalAmount from Customers c join Orders o on c.CustomerID=o.CustomerID where c.City='Los Angeles' and o.TotalAmount>300
18. select * from Employees e join Departments d on e.DepartmentID=d.DepartmentID where d.DepartmentName='Finance' or e.Name like ('%[aeiou]%[aeiou]%[aeiou]%[aeiou]%')
19. select p.ProductName, SUM(s.saleamount) QuantitySold, p.Price from Sales s join Products p on s.ProductID=p.ProductID where p.Price>500 group by p.ProductName having SUM(s.saleamount) > 100 
20. select * from Employees e join Departments d on e.DepartmentID=d.DepartmentID where e.salary>60000 and (d.DepartmentName='Sales' or d.DepartmentName='Marketing')
