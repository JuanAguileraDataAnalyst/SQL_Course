/*

Today's Topic: Stored Procedures

*/

Create Procedure Test
As
Select *
From EmployeeDemographics

Exec Test

Create Procedure temp_employee
As
Create table #temp_employee (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)
Insert into #temp_employee
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM EmployeeDemographics as emp
JOIN EmployeeSalary as sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

Select *
From #temp_employee

EXEC temp_employee @JobTitle = 'Salesman'