/*

Today's Topic: String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

--Drop Table EmployeeErrors;


CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM

Select EmployeeID, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

Select EmployeeID, RTRIM(employeeID) as IDRTRIM
FROM EmployeeErrors 

Select EmployeeID, LTRIM(employeeID) as IDLTRIM
FROM EmployeeErrors 

-- Using Replace

Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors


-- Using Substring

Select SUBSTRING(FirstName,3,3)
From EmployeeErrors

Select err.FirstName, SUBSTRING(err.FirstName,1,3), dem.LastName, SUBSTRING(dem.LastName,1,3)
From EmployeeErrors as err
Left outer Join [SQL Tutorial].dbo.EmployeeDemographics as dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)

-- Gender
-- LastName
-- Age
-- DOB

-- Using Upper and Lower

Select FirstName, LOWER(FirstName) 
FROM EmployeeErrors

Select FirstName, UPPER(FirstName)
FROM EmployeeErrors

Select FirstName, LOWER(FirstName) As FirstameLow, FirstName, UPPER(FirstName) as FirstNameUp
FROM EmployeeErrors