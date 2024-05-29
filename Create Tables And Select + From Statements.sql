/*
Select Statement
*, Top, Distinct, Count, As, Max, Min, Avg
*/

-- From: Master

--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics

--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeSalary

-- From: SQL Tutorial

--SELECT TOP *
--FROM EmployeeDemographics

--SELECT TOP 5 *
--FROM EmployeeDemographics

--SELECT DISTINCT(FirstName)
--FROM EmployeeDemographics

--SELECT Count(LastName) as LastNameCount
--FROM EmployeeDemographics

--SELECT *
--FROM EmployeeSalary

--SELECT MAX(Salary) as MaxSalary
--FROM EmployeeSalary

--SELECT MIN(Salary) as MinSalary
--FROM EmployeeSalary

SELECT AVG(Salary) as AvgSalary
FROM EmployeeSalary
