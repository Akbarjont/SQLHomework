--Easy Tasks:
1.1. select CONVERT(varchar(50),e.Employee_ID) + '-' + e.first_name + ' ' + e.Last_name from Employees e
1.2. select CONCAT((CONVERT(varchar(50),e.Employee_ID)),'-',e.first_name,' ',e.Last_name) from Employees e

2. update employees set Phone_number = REPLACE(Phone_number,124,999)
3. select First_name, LEN(First_name) First_name_len from Employees where First_name like ('[A,J,M]%')
4. select MANAGER_ID, sum(SALARY) from Employees group by MANAGER_ID
5. select *, case when Max1>Max2 and Max1>Max3 then Max1 when Max1<Max2 and Max3<Max2 then Max2 else Max3 end MaxFactor from TestMax
6. select * from cinema where id%2=1 and description != 'boring'
7. select *, case when Id=0 then REPLACE(id,0,(select max(id)+1 from SingleOrder)) else Id end id2 from SingleOrder order by id2
8. select coalesce(ssn,passportid,itin) FirstNonNullValueColumn from person
9. select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE, round(((DATEDIFF(DAY,hire_date,GETDATE()))/365.25),2) YearsOfService from Employees where (round(((DATEDIFF(DAY,hire_date,GETDATE()))/365.25),2))>10 and (round(((DATEDIFF(DAY,hire_date,GETDATE()))/365.25),2))<15
10. select * from Employees join (select DEPARTMENT_ID, round(AVG(salary),2) AvgSalary from Employees group by DEPARTMENT_ID) t1 on Employees.DEPARTMENT_ID=t1.DEPARTMENT_ID and SALARY>AvgSalary
--Medium Tasks:
1. 
declare @name varchar(50) = 'tf56sd#%OqH'
select
SUBSTRING(@name,1,1),
SUBSTRING(@name,2,1),
SUBSTRING(@name,3,1),
SUBSTRING(@name,4,1),
SUBSTRING(@name,5,1),
SUBSTRING(@name,6,1),
SUBSTRING(@name,7,1),
SUBSTRING(@name,8,1),
SUBSTRING(@name,9,1),
SUBSTRING(@name,10,1),
SUBSTRING(@name,11,1);
2.
select (SUBSTRING(fullname,1,(charindex(' ',fullname)))) Firstname,
(right((left(fullname,(charindex(' ',fullname,(charindex(' ',fullname)+1))))),((len(left(fullname,(charindex(' ',fullname,(charindex(' ',fullname)+1))))))-LEN(SUBSTRING(fullname,1,(charindex(' ',fullname))))))) Middlename,
(right(fullname,(LEN(FullName))-1-(len(left(fullname,(charindex(' ',fullname,(charindex(' ',fullname)+1)))))))) Lastname
from Students 
3.
with cte as
(select DeliveryState, CustomerID as Calcust from Orders
where DeliveryState='CA')
select Orders.* from cte join Orders
on customerid=calcust
where Orders.DeliveryState='TX'
4.
with CTE as (
select ProductDescription Product, Ungroup.Quantity qty from Ungroup
union all
select Product, qty - 1 from CTE where qty - 1>0
)
select Product, 1 Quantity from CTE;
5.
select STRING_AGG(string,' ') from DMLTable;
6.
select *, case
when DATEDIFF(year,hire_date,getdate())<1
then 'New Hire'
when DATEDIFF(year,hire_date,getdate())<5
then 'Junior'
when DATEDIFF(year,hire_date,getdate())<10
then 'Mid-Level'
when DATEDIFF(year,hire_date,getdate())<20
then 'Senior'
else 'Veteran'
end Employment_Stage 
from Employees
7.
with CTE as (select DEPARTMENT_ID, round(AVG(salary),0) DepAvgSalary from Employees group by DEPARTMENT_ID)
select * from Employees join CTE on Employees.DEPARTMENT_ID=CTE.DEPARTMENT_ID where Employees.SALARY>DepAvgSalary;
8.
select * from Employees
where FIRST_NAME + ' ' + LAST_NAME like ('%a%') and cast(SALARY as decimal) % 5=0
9.
select e.DEPARTMENT_ID, COUNT(datediff(year,Hire_date,GETDATE())) EmpNumber, 
(COUNT(datediff(year,Hire_date,GETDATE()))/ count(e.EMPLOYEE_ID)*100) Percentage from Employees e
where (datediff(year,Hire_date,GETDATE()))>3
group by e.DEPARTMENT_ID 
10.
with CTE as(
select JobDescription, MAX(MissionCount) maxlar, MIN(MissionCount) minlar from Personal
group by JobDescription
)
select p1.JobDescription, p1.SpacemanID tajribalilar, p2.SpacemanID tajribasizlar from CTE
join Personal p1 on maxlar=p1.MissionCount
join Personal p2 on minlar=p2.MissionCount;

--Difficult Tasks;
1.
select s2.StudentID, s2.FullName, s2.Grade+isnull(s1.Grade,0) SumGrade from Students s1 right join Students s2 on s1.StudentID=s2.StudentID-1;
2.
select e3.EmployeeID, e3.ManagerID, e3.JobTitle,
case when floor((isnull(e1.ManagerID,0) + isnull(e2.ManagerID,0) + isnull(e3.ManagerID,0))/3) < 333
then 0
when floor((isnull(e1.ManagerID,0) + isnull(e2.ManagerID,0) + isnull(e3.ManagerID,0))/3) < 1001
then 1
else 2
end Depth
from Employee e1 right join Employee e2 on e1.EmployeeID=e2.ManagerID right join Employee e3 on e2.EmployeeID=e3.ManagerID;
3.
  I know the solution is wrong, but heres something than nothing:
with cte as (
select
SUBSTRING(Equation,1,1) a,
SUBSTRING(Equation,2,1) b ,
SUBSTRING(Equation,3,1) c,
SUBSTRING(Equation,4,1) d,
SUBSTRING(Equation,5,1) e
from Equations
)
select *, isnull(char(ascii(a)),'')+isnull(char(ascii(b)),'')+isnull(char(ascii(c)),'')+isnull(char(ascii(d)),'')+isnull(char(ascii(e)),'') from cte
4.
select * from Student
select s1.StudentName, s2.StudentName, s1.Birthday from Student s1 join Student s2 on s1.Birthday=s2.Birthday and s1.StudentName>s2.StudentName;
5.
select p1.PlayerA, p1.PlayerB, p1.Score+p2.Score totalscore from PlayerScores p1 join PlayerScores p2 on p1.PlayerA=p2.PlayerB and p1.Score>p2.Score
