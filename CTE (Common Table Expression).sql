/*
CTE (Common Table Expression)
*/

With CTE_Employee as
(Select Firstname, Gender, Salary,
COUNT(Gender) over (PARTITION By Gender) as TotalGender, 
AVG (Salary) Over (PARTITION By Gender) as AvgSalary
From [SQL Tutorial].dbo.EmployeeDemographics
Join [SQL Tutorial].dbo.EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where Salary > '45000'
) 
Select FirstName, AvgSalary
From CTE_Employee