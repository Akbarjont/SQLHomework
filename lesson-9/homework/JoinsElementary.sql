1. select p.productname, s.suppliername from Products p cross join suppliers s
2. select d.DepartmentName, e.Name from Departments d cross join Employees e
3. select s.SupplierName, p.ProductName from Products p join suppliers s on p.SupplierID=s.SupplierID
