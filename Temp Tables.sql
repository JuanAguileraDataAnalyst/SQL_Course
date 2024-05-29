/*
Temp Tables
*/

Create table #temp_Employee (
EmployeeID int, 
JobTitle varchar(100),
Salary int
)

Select *
From #temp_Employee

Insert into #temp_Employee values (
'1001','HR','45000'
)

Insert into #temp_Employee
Select*
From [SQL Tutorial].dbo.EmployeeSalary

--Create Table #temp_Employee2(
--JobTitle varchar(50),
--EmployeesPerJob int,
--AvgAge int,
--AvgSalary int
--)

--Insert into #temp_Employee2
--Select JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
--From [SQL Tutorial].dbo.EmployeeDemographics as emp
--Join [SQL Tutorial].dbo.EmployeeSalary as sal
--	On emp.EmployeeID = sal.EmployeeID
--Group By JobTitle

--Select *
--From #temp_Employee2

Drop table if exists #temp_Employee2
Create Table #temp_Employee2(
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

Insert into #temp_Employee2
Select JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
From [SQL Tutorial].dbo.EmployeeDemographics as emp
Join [SQL Tutorial].dbo.EmployeeSalary as sal
	On emp.EmployeeID = sal.EmployeeID
Group By JobTitle

Select *
From #temp_Employee2