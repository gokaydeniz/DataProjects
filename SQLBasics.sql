--CREATE TABLE  EmployeeDemographics
--(EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50))

--CREATE TABLE EmployeeSalary
--(EmployeeID int,
--JobTitle varchar(50),
--Salary int)

--Insert into EmployeeDemographics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')


--Insert into EmployeeSalary Values
--(1001,'Salesman',45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)
--Select *			-- Select all
--FROM EmployeeDemographics

--SELECT TOP 5 *
--FROM EmployeeDemographics

--Select Distinct(Gender)
--FROM EmployeeDemographics

--Select Distinct(Age)
--FROM EmployeeDemographics

--Select Count(LastName) AS LastNameCount
--FROM EmployeeDemographics

--SELECT  *
--FROM EmployeeSalary

--Select Max(Salary)
--FROM EmployeeSalary

--Select AVG(Salary)
--FROM EmployeeSalary

--Select *
--FROM SQLTutorial3.dbo.EmployeeDemographics
--WHERE FirstName ='Jim' or FirstName <>  'Jim'
----WHERE FirstName <> 'Jim'			--Everyone except Jim


--Select *
--FROM SQLTutorial3.dbo.EmployeeDemographics
----WHERE FirstName = 'Pam'
----WHERE LastName Like 'S%%%t%'
----WHERE FirstName is NOT NULL
--WHERE FirstName In('Jim', 'Michael','Pam')


 ------GROUP BY STATEMENTS

--Select Gender, Age,COUNT(Gender)
--FROM EmployeeDemographics
--GROUP BY Gender ,Age

----Select Gender, Count(Gender)
----FROM EmployeeDemographics
----WHERE Age >30
----GROUP BY Gender
------ORDER BY Gender        ---From smaller to bigger
----ORDER BY Gender desc     ---From bigger to smaller 

---------------------- INNER JOIN   (shows common things)
--SELECT *
--FROM SQLTutorial3.dbo.EmployeeDemographics

--SELECT *
--FROM SQLTutorial3.dbo.EmployeeSalary

--SELECT *
--FROM SQLTutorial3.dbo.EmployeeDemographics
--Inner Join SQLTutorial3.dbo.EmployeeSalary
--     ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--FROM SQLTutorial3.dbo.EmployeeDemographics

--SELECT *
--FROM SQLTutorial3.dbo.EmployeeSalary	 

--------joining two tables together, we need entities that are common 
--------in these two tables by at least a single variable

--------------------------------- OUTER JOIN    (combines with non common entities)
--SELECT *
--FROM SQLTutorial3.dbo.EmployeeDemographics
--FULL Outer Join SQLTutorial3.dbo.EmployeeSalary
--     ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
	

--"FULL OUTER JOIN" will combine to tables with no common entities

--SELECT *
--FROM SQLTutorial3.dbo.EmployeeDemographics
--Right Outer Join SQLTutorial3.dbo.EmployeeSalary
--    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


--"RIGHT OUTER JOIN" will combine the relevant entities of the 
--first chosen table and all the entities of the second chosen table

--SELECT *
--FROM SQLTutorial3.dbo.EmployeeDemographics
--Left Outer Join SQLTutorial3.dbo.EmployeeSalary
--    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

----SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Age, Salary
----FROM SQLTutorial3.dbo.EmployeeDemographics
----Inner Join SQLTutorial3.dbo.EmployeeSalary
----	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--here you do not have to specify the table for columns that are 
--contained in the table specified in the "from" section, but you 
--should code "tablename.columnname" for tables that are not contained 
--in that table


--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
--FROM SQLTutorial3.dbo.EmployeeDemographics
--Inner Join SQLTutorial3.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE FirstName <> 'Jim'
--ORDER BY Salary DESC


--SELECT JobTitle, AVG(Salary)
--FROM SQLTutorial3.dbo.EmployeeDemographics
--Inner Join SQLTutorial3.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE JobTitle = 'Salesman'
--GROUP BY JobTitle


---UNION

--Insert into EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly', 'Flax', NULL, NULL),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

--SELECT *
--FROM EmployeeDemographics

--Create Table WareHouseEmployeeDemographics 
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)

--Insert into WareHouseEmployeeDemographics VALUES
--(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female')

--SELECT * 
--FROM SQLTutorial3.dbo.EmployeeDemographics

--SELECT * 
--FROM SQLTutorial3.dbo.WareHouseEmployeeDemographics

--SELECT * 
--FROM SQLTutorial3.dbo.EmployeeSalary

--Insert into EmployeeDemographics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')

--Insert into EmployeeSalary Values
--(1001,'Salesman',45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)


------------------ full outer join can be thought of as a horizontal
------------------ combination whereas union is a vertical one


--SELECT * 
--FROM SQLTutorial3.dbo.EmployeeDemographics
--Full Outer Join SQLTutorial3.dbo.WareHouseEmployeeDemographics
--	ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

	
--SELECT * 
--FROM SQLTutorial3.dbo.EmployeeDemographics
--UNION
--SELECT * 
--FROM SQLTutorial3.dbo.WareHouseEmployeeDemographics

--SELECT EmployeeID, FirstName, Age
--FROM SQLTutorial3.dbo.EmployeeDemographics
--UNION
--SELECT EmployeeID, JobTitle, Salary
--FROM SQLTutorial3.dbo.EmployeeSalary
--ORDER BY EmployeeID

--notice how "UNION" doesn't require the 
--same column name to put columns serially,
--so be careful using that code

----------------------------------------------Case Statement
-------------------------------------------- see how after the column name "Age" we 
-------------------------------------------- put a comma because the case statement is 
-------------------------------------------- actually another column derived from the previous columns
--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age > 30 THEN 'Old'
--	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
--	ELSE 'Baby'
--END
--FROM SQLTutorial3.dbo.EmployeeDemographics
--WHERE Age is not Null 
--ORDER BY Age


--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age > 30 THEN 'Old'
--	WHEN Age = 29 THEN 'Hey'
--	ELSE 'Baby'
--END
--FROM SQLTutorial3.dbo.EmployeeDemographics
--WHERE Age is not Null 
--ORDER BY Age


--SELECT FirstName, LastName, JobTitle, Salary,
--CASE 
--	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
--	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
--	WHEN JobTitle = 'HR'  THEN Salary + (Salary * .01)
--	ELSE Salary + (Salary * .03)
--END AS SalaryAfterRaise
--FROM  SQLTutorial3.dbo.EmployeeDemographics
--JOIN SQLTutorial3.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


--------------------------------------------------Having Clause

--SELECT JobTitle, COUNT(JobTitle) as 'Number of People'
--FROM SQLTutorial3.dbo.EmployeeDemographics
--JOIN SQLTutorial3.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
------------WHERE COUNT(JobTitle) > 4    --- WE cannot use this
--GROUP BY JobTitle 
--HAVING COUNT(JobTitle) > 4




--SELECT JobTitle, AVG(Salary) as 'Average'
--FROM SQLTutorial3.dbo.EmployeeDemographics
--JOIN SQLTutorial3.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--GROUP BY JobTitle
--HAVING AVG(Salary) > 45000
--ORDER BY AVG(Salary)

------------------------------------------------------Updating/Deleting Data
--SELECT * 
--FROM SQLTutorial3.dbo.EmployeeDemographics

--UPDATE SQLTutorial3.dbo.EmployeeDemographics
--SET EmployeeID = 1010
--WHERE FirstName = 'Jim'

--SELECT * 
--FROM SQLTutorial3.dbo.EmployeeDemographics

--UPDATE SQLTutorial3.dbo.EmployeeDemographics
--SET Age = 33, Gender = 'Female'
--WHERE FirstName = 'Angela' AND LastName = 'Martin'

--SELECT * 
--FROM SQLTutorial3.dbo.EmployeeDemographics

--DELETE FROM SQLTutorial3.dbo.EmployeeDemographics
--WHERE EmployeeID = 1010 

--SELECT * 
--FROM SQLTutorial3.dbo.EmployeeDemographics


----first, see the table you want to delete, then you can delete it safely
----Select * 
----FROM SQLTutorial3.dbo.EmployeeDemographics
----WHERE EmployeeID = 1004

----DELETE FROM SQLTutorial3.dbo.EmployeeDemographics
----WHERE EmployeeID = 1004


--INSERT INTO SQLTutorial3.dbo.EmployeeDemographics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male')

--SELECT * 
--FROM SQLTutorial3.dbo.EmployeeDemographics


---------------------------------------------------------------ALIASING

--SELECT FirstName + ' ' + LastName AS FullName
--FROM SQLTutorial3.dbo.EmployeeDemographics

--SELECT FirstName + ' ' + LastName FullName
--FROM [SQLTutorial3].[dbo].EmployeeDemographics 

--SELECT AVG(Age) AS 'Average Age'
--FROM SQLTutorial3.dbo.EmployeeDemographics



----you can give a codename to tables as well to 
--make coding easier

--SELECT * 
--FROM [SQLTutorial3].[dbo].[EmployeeDemographics] AS Demo
--ORDER BY EmployeeID

--SELECT * 
--FROM [SQLTutorial3].[dbo].[EmployeeSalary] AS Sal
--ORDER BY EmployeeID

--SELECT Demo.EmployeeID, Sal.Salary
--FROM [SQLTutorial3].[dbo].[EmployeeDemographics] AS Demo
--JOIN SQLTutorial3.dbo.EmployeeSalary AS Sal
--	ON SAL.EmployeeID = Demo.EmployeeID

--SELECT A.EmployeeID, A.FirstName, B.JobTitle 
--FROM [SQLTutorial3].[dbo].[EmployeeDemographics] AS A
--LEFT JOIN [SQLTutorial3].[dbo].[EmployeeSalary] AS B
--	ON A.EmployeeID = B.EmployeeID
--LEFT JOIN [SQLTutorial3].[dbo].[WareHouseEmployeeDemographics] AS C
--	ON A.EmployeeID = C.EmployeeID



-------------------------------------------------------Partition By

--SELECT FirstName, LastName, Gender, Salary, 
--COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
--FROM SQLTutorial3..EmployeeDemographics DEM
--JOIN SQLTutorial3..EmployeeSalary SAL 
--	ON DEM.EmployeeID = SAL.EmployeeID

------------ partition function groups the entity by the column type it belongs to and for 
------------ each entity, shows how many other entities are also in that column type

--SELECT Gender, COUNT(Gender) AS 'Gender Count'
--FROM SQLTutorial3..EmployeeDemographics DEM
--JOIN SQLTutorial3..EmployeeSalary SAL 
--	ON DEM.EmployeeID = SAL.EmployeeID
--GROUP BY Gender

-------------- you see how partition function comes in handy when composing 
-------------- data of gender count and other characteristics of the entities



----------------------------------------------Advanced Playlist: CTEs

----------WITH CTE_Empoyee AS
----------(SELECT FirstName, LastName, Gender, Salary,
----------Count(Gender) OVER (PARTITION BY Gender) AS TotalGender,
----------AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary
----------FROM SQLTutorial3..EmployeeDemographics DEM
----------JOIN SQLTutorial3..EmployeeSalary SAL
----------	ON DEM.EmployeeID=SAL.EmployeeID
----------WHERE Salary > '45000')

----------SELECT FirstName, AvgSalary
----------FROM CTE_Empoyee

-------------- you should run this code completely each time you run the last 
-------------- part becasue the CTE_Employee table is not saved anywhere, it 
-------------- is created every time you run the code

-------------- and it has to be typed right above the said code

--------------------------------------------------------Temp Tables
--DROP TABLE IF EXISTS #temp_Employee
--CREATE TABLE #temp_Employee (
--EmployeeID int,
--JobTitle varchar(100),
--Salary int,
--)
--Select *
--FROM #temp_Employee


--INSERT INTO #temp_Employee VALUES
--(1001,'HR',45000)

--INSERT INTO #temp_Employee
--SELECT *
--FROM SQLTutorial3..EmployeeSalary

--Select *
--FROM #temp_Employee

--DROP TABLE IF EXISTS #Temp_Employee2
--CREATE TABLE #Temp_Employee2 (
--Jobtitle varchar(50),
--EmployeesPerJob int,
--AvgAge int,
--AvgSalary int)

--INSERT INTO #Temp_Employee2
--SELECT JobTitle, COUNT(Jobtitle), AVG(Age), AVG(Salary)
--FROM SQLTutorial3..EmployeeDemographics DEM
--JOIN SQLTutorial3..EmployeeSalary SAL
--	ON DEM.EmployeeID=SAL.EmployeeID
--GROUP BY JobTitle

--SELECT *
--FROM #Temp_Employee2



---------------------------------------------------------String Functions - 
--Drop Table EmployeeErrors

--CREATE TABLE EmployeeErrors 
--(
--EmployeeID varchar(50),
--FirstName varchar(50),
--LastName varchar(50)
--)

--INSERT INTO EmployeeErrors VALUES
--('1001   ', 'Jimbo', 'Halbert'),
--('   1002', 'Pamela', 'Beasely'),
--('1005', 'TOby', 'Flenderson - Fired')

--SELECT *
--FROM EmployeeErrors
-----------------------------Using LTRIM, RTRIM

--SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
--FROM EmployeeErrors

--SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
--FROM EmployeeErrors

--SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
--FROM EmployeeErrors


-------------------------------------USING REPLACE

--SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
--FROM EmployeeErrors

--SELECT *
--FROM EmployeeErrors
-------USING SUBSTRING

--SELECT SUBSTRING(FirstName,1,3) 
--FROM EmployeeErrors

--SELECT *
--FROM EmployeeErrors


------ ---- the first integer in the argument indicates the starting
---- index and the second integer indicates how many steps we take

--SELECT SUBSTRING(FirstName,3,3) 
--FROM EmployeeErrors



--SELECT err.FirstName, dem.FirstName
--FROM EmployeeErrors err
--JOIN EmployeeDemographics dem
--	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)


--SELECT *
--FROM EmployeeErrors




