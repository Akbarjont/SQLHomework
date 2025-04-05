1. select min(Price) from products
2. select max(Salary) from Employees
3. select count(customerid) from customers
4. select count(distinct category) from products
5. select sum(saleamount) from sales where productid = 7
6. select avg(age) from Employees
7. select count(EmployeeID) from Employees group by DepartmentName
8. select Category, min(Price) as MinPriceProductOfCategory, max(price) as MaxPriceProductOfCategory from Products group by Category
9. select customerid, sum(saleamount) from Sales group by CustomerID
10. select DepartmentName, count(employeeid) from Employees group by DepartmentName having count(employeeid) >5
11. select ProductID, sum(saleamount) as TotalSales , AVG(saleamount) as AverageSales from sales group by ProductID
12. select COUNT(EmployeeID) as NumberOfEmployees from Employees where DepartmentName = 'HR'
13. select DepartmentName, MAX(salary) as MAXsalary, MIN(salary) as MINsalary from Employees group by DepartmentName
14. select DepartmentName, avg(salary) as AVGsalary from Employees group by DepartmentName
15. select DepartmentName, avg(salary) as AVGsalary, count(employeeid) as numberOfEmployees from Employees group by DepartmentName
16. select Category, AVG(price) as AVGprice from Products group by Category having (AVG(price)) > 400
17. select YEAR(saledate) as years, SUM(saleamount) as TotalSales from Sales group by YEAR(saledate)
18. select count(quantity) from Orders where quantity>=3
19. select DepartmentName, sum(Salary) from Employees group by DepartmentName having sum(Salary) > 500000
20. select productid, AVG(saleamount) from Sales group by productid having (AVG(saleamount))>200
21. select CustomerID, sum(saleamount) from Sales group by CustomerID having (sum(saleamount))>1500
22. select DepartmentName, SUM(salary) as TotalSalary, AVG(salary) as AvgSalary from Employees Group by DepartmentName having (AVG(salary))>65000
23. select CustomerID, MAX(TotalAmount) AS MAXorderValue, min(totalamount) as MINorderValue, SUM(totalamount) as CustomersTotalAmount from Orders group by CustomerID HAVING (min(totalamount)> 50
24. select MONTH(SaleDate) as SaleMonth, sum(Saleamount) as MonthlySale, COUNT(distinct SaleID) as NumberOfSales from Sales Group by MONTH(SaleDate) Having (COUNT(distinct ProductID)) > 8
25. select YEAR(OrderDate) as years, Min(Quantity) as MinOrderQuantity, Max(Quantity) as MaxOrderQuantity  from Orders Group by YEAR(OrderDate)
