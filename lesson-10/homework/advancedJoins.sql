1. select Name, Salary, DepartmentName from Employees e join Departments d on e.DepartmentID=d.DepartmentID and e.Salary>50000
2. select c.FirstName, c.LastName, o.OrderDate from Customers c join Orders o on c.CustomerID=o.CustomerID and YEAR(OrderDate)=2023
3. select * from Employees e left outer join Departments d on e.DepartmentID=d.DepartmentID
4. select SupplierName, ProductName from Products p right join Suppliers s on p.SupplierID=s.SupplierID
5. select o.OrderID, OrderDate, PaymentDate, Amount from Orders o full join Payments p on o.OrderID=p.OrderID
6. select e1.Name, e2.Name from Employees e1 join Employees e2 on e1.ManagerID=e2.EmployeeID
7. select s.Name, c.CourseName from Students s join Enrollments e on s.StudentID=e.StudentID  join Courses c on c.CourseID=e.CourseID and c.CourseName='Math 101'
8. select c.FirstName, c.LastName, o.Quantity from Customers c join Orders o on c.CustomerID=o.CustomerID and o.Quantity>3 
9. select e.Name, d.DepartmentName from Employees e join Departments d on e.DepartmentID=d.DepartmentID and d.DepartmentName='Human Resources'
10. select d.DepartmentName, COUNT(e.employeeid) EmployeeCount from Employees e join Departments d on e.DepartmentID=d.DepartmentID group by d.DepartmentName having COUNT(e.employeeid)>10 
11. select p.ProductID, p.ProductName from Products p LEFT join Sales s on p.ProductID=s.ProductID and s.SaleID IS NULL
12. select c.FirstName, c.LastName, COUNT(o.orderid) TotalOrders from Customers c join Orders o on c.CustomerID=o.CustomerID group by c.FirstName, c.LastName having COUNT(o.orderid)>=1
13. select e.Name, d.DepartmentName from Employees e join Departments d on e.DepartmentID=d.DepartmentID
14. select e1.Name Employee1, e3.Name Employee2, e2.Name ManagerID from Employees e1 left join Employees e2 on e1.ManagerID=e2.EmployeeID left join Employees e3 on e1.ManagerID=e3.ManagerID where e1.Name<>e3.Name
15. select o.OrderID, o.OrderDate, c.FirstName, c.LastName from Orders o join Customers c on o.CustomerID=c.CustomerID and YEAR(o.OrderDate)=2022
16. select * from Employees e join Departments d on e.DepartmentID=d.DepartmentID and d.DepartmentName='Sales' and e.Salary>60000
17. select o.OrderID, o.OrderDate, p.PaymentDate, p.Amount from Orders o join Payments p on o.OrderID=p.OrderID
18. select p.ProductID, p.ProductName from Products p left join Orders o on p.ProductID=o.ProductID and o.OrderID is null
19. select Name, salary from Employees where salary>(select AVG(Salary) from Employees) 
20. select * from Orders o left join Payments p on o.OrderID=p.OrderID where YEAR(o.OrderDate)<2020 and p.PaymentID is null
21. 
