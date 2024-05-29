/*
Union, Union All
*/

Select *
From [SQL Tutorial].dbo.EmployeeDemographics

Select *
From [SQL Tutorial].dbo.WareHouseEmployeeDemographics

Select *
From [SQL Tutorial].dbo.EmployeeDemographics
Full Outer Join [SQL Tutorial].dbo.WareHouseEmployeeDemographics
	On EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

Select *
From [SQL Tutorial].dbo.EmployeeDemographics
UNION
Select *
From [SQL Tutorial].dbo.WareHouseEmployeeDemographics
Order by EmployeeID

Select *
From [SQL Tutorial].dbo.EmployeeDemographics
UNION ALL
Select *
From [SQL Tutorial].dbo.WareHouseEmployeeDemographics
Order by EmployeeID

/*Atention Using UNION Wrong answer*/
Select EmployeeID, FirstName, Age
From [SQL Tutorial].dbo.EmployeeDemographics
UNION
Select EmployeeID, Jobtitle, Salary
From [SQL Tutorial].dbo.EmployeeSalary
Order By EmployeeID