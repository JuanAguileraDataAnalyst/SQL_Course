/*
Case Statement
*/

--Select FirstName, LastName, Age,
--Case
--	When Age > 30 Then 'Old'
--	When Age Between 27 and 30 Then 'Young'
--	Else 'Baby'
--End
--From [SQL Tutorial].dbo.EmployeeDemographics
--Where Age is NOT NULL
--Order By Age 

Select FirstName, LastName, JobTitle, Salary,
Case	
	When JobTitle = 'Salesman' Then Salary + (Salary * 0.10)
	When JobTitle = 'Accountant' Then Salary + (Salary * 0.05)
	When JobTitle = 'HR' Then Salary + (Salary * .00001)
	Else Salary + (Salary * 0.03)
End as SalaryAfterRaise
From [SQL Tutorial].dbo.EmployeeDemographics
Join [SQL Tutorial].dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID