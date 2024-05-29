/*
Aliasing
*/

--Select FirstName + ' ' + LastName as FullName
--From [SQL Tutorial].dbo.EmployeeDemographics

--Select AVG (Age) As AvgAge
--From [SQL Tutorial].dbo.EmployeeDemographics

--Select Demo.EmployeeID, Sal.Salary
--From [SQL Tutorial].dbo.EmployeeDemographics as Demo
--Join [SQL Tutorial].dbo.EmployeeSalary as Sal
--	On Demo.EmployeeID = Sal.EmployeeID

Select Demo.EmployeeID, Demo.FirstName, Sal.JobTitle, Ware.Age
From [SQL Tutorial].dbo.EmployeeDemographics as Demo
Left Join [SQL Tutorial].dbo.EmployeeSalary as Sal
	On Demo.EmployeeID = Sal.EmployeeID
Left Join [SQL Tutorial].dbo.WareHouseEmployeeDemographics as Ware
	On Demo.EmployeeID = Ware.EmployeeID