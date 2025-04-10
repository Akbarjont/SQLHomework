1. select o.OrderID, C.FirstName, o.OrderDate from Orders o join Customers c on o.CustomerID=c.CustomerID where YEAR(o.OrderDate)>2022
2. select e.Name, d.DepartmentName from Employees e join Departments d on e.DepartmentID=d.DepartmentID where d.DepartmentName='Sales' or d.DepartmentName='Marketing'
3. select d.DepartmentName, E.Name, e.Salary MaxSalary from Departments d join Employees e on d.DepartmentID=e.DepartmentID where e.Salary=(select MAX(e2.Salary) from Employees e2 where e2.DepartmentID=d.DepartmentID)
4. select c.FirstName, o.OrderID, o.OrderDate from Customers c join Orders o on c.CustomerID=o.CustomerID where Country='USA' and YEAR(o.OrderDate)=2023
5. select c.FirstName CustomerName, ISNULL(o.TotalOrders,0) TotalOrders from Customers c left join (select CustomerID, COUNT(*) as TotalOrders from Orders o group by CustomerID) o on o.CustomerID=c.customerid
6. select * from Products p join Suppliers s on p.SupplierID=s.SupplierID where s.SupplierName = 'Gadget Supplies' or s.SupplierName= 'Clothing Mart'
7. 
