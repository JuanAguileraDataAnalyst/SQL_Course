/*
Group By, Order By
*/

--SELECT DISTINCT (Gender)
--FROM EmployeeDemographics
--GROUP BY Gender

--SELECT Gender, COUNT(Gender) as NumberEmployees 
--FROM EmployeeDemographics
--GROUP BY Gender

SELECT *
FROM EmployeeDemographics
Order By 4 ASC,5 DESC

SELECT Gender, Count(Gender) As CountGender
From EmployeeDemographics
Where Age > 31
Group by Gender
Order By CountGender ASC
