/*
Having Clause
*/

--Select JobTitle, COUNT (JobTitle)
--From [SQL Tutorial].dbo.EmployeeDemographics
--Join [SQL Tutorial].dbo.EmployeeSalary
--	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--Group By JobTitle
--Having COUNT(JobTitle) >1

Select JobTitle, Avg(Salary)
From [SQL Tutorial].dbo.EmployeeDemographics
Join [SQL Tutorial].dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Group By JobTitle
Having Avg(Salary) > 45000
Order By AVG(Salary)

