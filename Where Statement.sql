/*
Where Statement
=, <>,<,>,And,Or,Like,Null,Not Null,In
*/

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName = 'Jim'

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName <> 'Jim'

--SELECT *
--FROM EmployeeDemographics
--WHERE Age > 30

--SELECT *
--FROM EmployeeDemographics
--WHERE Age >=30

--SELECT *
--FROM EmployeeDemographics
--WHERE Age <=32

--SELECT *
--FROM EmployeeDemographics
--WHERE Age <=32 AND Gender = 'Male'

--SELECT *
--FROM EmployeeDemographics
--WHERE Age <=32 OR Gender = 'Male'

-- Everyone who´s last name start with 'S' %=Wildcard
--SELECT *
--FROM EmployeeDemographics
--WHERE LastName Like 'S%'

-- Anywhere in Anybody´s name, There is an S '%S%´'
--SELECT *
--FROM EmployeeDemographics
--WHERE LastName Like '%S%'

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName Like 'S%c%ott%'

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName is NULL

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName is NOT NULL

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim','Michael')