/*
Updating / Deleting Data
*/

--Select *
--From [SQL Tutorial].dbo.EmployeeDemographics

--Update [SQL Tutorial].dbo.EmployeeDemographics
--Set EmployeeID = 1012
--Where FirstName = 'Holly' and LastName = 'Flax'

--Select *
--From [SQL Tutorial].dbo.EmployeeDemographics

--Update [SQL Tutorial].dbo.EmployeeDemographics
--Set Age = 31, Gender = 'Female'
--Where FirstName = 'Holly' and LastName = 'Flax'

Select *
From [SQL Tutorial].dbo.EmployeeDemographics

Update [SQL Tutorial].dbo.EmployeeDemographics
Set Age = 31, Gender = 'Female'
Where EmployeeID = 1012

Delete From [SQL Tutorial].dbo.EmployeeDemographics
Where EmployeeID = 1005

