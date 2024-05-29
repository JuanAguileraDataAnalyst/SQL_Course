/*

Today's Topic: Subqueries (in the Select, From, and Where Statement)

*/

Select EmployeeID, JobTitle, Salary
From EmployeeSalary

-- Subquery in Select

Select EmployeeID, Salary, (Select AVG(Salary) from EmployeeSalary) as AllAvgSalary
From EmployeeSalary

-- How to do it with Partition By

Select EmployeeID, Salary, AVG(Salary) over() as AllAvgSalary
From EmployeeSalary

-- Why Group By doesn't work

Select EmployeeID, Salary, AVG(Salary) as AllavgSalary
From EmployeeSalary
Group By EmployeeID, Salary
Order By 1,2

-- Subquery in From

Select a.EmployeeID, AllAvgSalary
From (Select EmployeeID, Salary, AVG(Salary) over() as AllAvgSalary 
	From EmployeeSalary) as a

-- Subquery in Where

Select EmployeeID, JobTitle, Salary
From EmployeeSalary
Where EmployeeID in (
		Select EmployeeID
		From EmployeeDemographics
		Where Age > 30)