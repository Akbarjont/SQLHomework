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
