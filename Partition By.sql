/*
Partition By
*/

--Select FirstName, LastName,Gender, Salary, COUNT(Gender) over (Partition by Gender) As TotalGender
--From [SQL Tutorial].dbo.EmployeeDemographics
--Join [SQL Tutorial].dbo.EmployeeSalary
--	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select Gender, COUNT(Gender) As CountGender
From [SQL Tutorial].dbo.EmployeeDemographics
Join [SQL Tutorial].dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Group By Gender