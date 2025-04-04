1. select min(Price) from products
2. select max(Salary) from Employees
3. select count(customerid) from customers
4. select count(distinct category) from products
5. select sum(saleamount) from sales where productid = 7
6. select avg(age) from Employees
7. select count(EmployeeID) from Employees group by DepartmentName
8. select Category, min(Price) MinPriceProductOfCategory, max(price) MaxPriceProductOfCategory from Products group by Category
9. select customerid, sum(saleamount) from Sales group by CustomerID
10. select DepartmentName, count(employeeid) from Employees group by DepartmentName having count(employeeid) >5
