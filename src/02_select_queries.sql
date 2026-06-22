```sql
/******************************************************************************
    MS SQL SERVER - SELECT QUERIES (ZERO TO HERO)
    Table Used : Employee
******************************************************************************/

USE LearningSQLDB;
GO


/******************************************************************************
    SELECT ALL COLUMNS
******************************************************************************/

-- Retrieve all columns and all rows.
SELECT *
FROM Employee;


/******************************************************************************
    SELECT SPECIFIC COLUMNS
******************************************************************************/

-- Retrieve EmployeeId, FullName and EmailId.
SELECT EmployeeId,
       FullName,
       EmailId
FROM Employee;


/******************************************************************************
    SELECT MULTIPLE COLUMNS
******************************************************************************/

-- Retrieve EmployeeId, FullName and Salary.
SELECT EmployeeId,
       FullName,
       Salary
FROM Employee;


/******************************************************************************
    DISTINCT VALUES
******************************************************************************/

-- Retrieve unique statuses.
SELECT DISTINCT Status
FROM Employee;


-- Retrieve unique joining years.
SELECT DISTINCT YEAR(DateOfJoin)
FROM Employee;


-- Retrieve unique combinations.
SELECT DISTINCT Status,
                YEAR(DateOfJoin)
FROM Employee;


/******************************************************************************
    COLUMN ALIAS
******************************************************************************/

-- Rename columns using aliases.
SELECT EmployeeId AS Id,
       FullName AS EmployeeName
FROM Employee;


SELECT FullName AS Name,
       Salary AS MonthlySalary
FROM Employee;


/******************************************************************************
    TOP
******************************************************************************/

-- Retrieve first 3 rows.
SELECT TOP 3 *
FROM Employee;


-- Retrieve top 5 rows.
SELECT TOP 5 *
FROM Employee;


-- Retrieve top 50 percent rows.
SELECT TOP 50 PERCENT *
FROM Employee;


/******************************************************************************
    TOP WITH ORDER BY
******************************************************************************/

-- Retrieve top 3 highest-paid employees.
SELECT TOP 3 *
FROM Employee
ORDER BY Salary DESC;


-- Retrieve top 3 lowest-paid employees.
SELECT TOP 3 *
FROM Employee
ORDER BY Salary ASC;


/******************************************************************************
    CALCULATED COLUMNS
******************************************************************************/

-- Calculate annual salary.
SELECT FullName,
       Salary,
       Salary * 12 AS AnnualSalary
FROM Employee;


-- Calculate 10 percent bonus.
SELECT FullName,
       Salary,
       Salary * 0.10 AS Bonus
FROM Employee;


-- Calculate increased salary.
SELECT FullName,
       Salary,
       Salary * 1.10 AS IncreasedSalary
FROM Employee;


/******************************************************************************
    CONCATENATION
******************************************************************************/

-- Combine name and status.
SELECT FullName + ' - ' + Status AS EmployeeInfo
FROM Employee;


-- Using CONCAT function.
SELECT CONCAT(FullName, ' - ', Status)
AS EmployeeInfo
FROM Employee;


/******************************************************************************
    AGGREGATE FUNCTIONS
******************************************************************************/

-- Total number of employees.
SELECT COUNT(*)
FROM Employee;


-- Minimum salary.
SELECT MIN(Salary)
FROM Employee;


-- Maximum salary.
SELECT MAX(Salary)
FROM Employee;


-- Average salary.
SELECT AVG(Salary)
FROM Employee;


-- Total salary.
SELECT SUM(Salary)
FROM Employee;


/******************************************************************************
    STRING FUNCTIONS
******************************************************************************/

-- Convert names to uppercase.
SELECT UPPER(FullName)
FROM Employee;


-- Convert names to lowercase.
SELECT LOWER(FullName)
FROM Employee;


-- Length of employee names.
SELECT FullName,
       LEN(FullName)
FROM Employee;


-- First three characters.
SELECT LEFT(FullName,3)
FROM Employee;


-- Last three characters.
SELECT RIGHT(FullName,3)
FROM Employee;


-- Extract characters from position 2.
SELECT SUBSTRING(FullName,2,3)
FROM Employee;


-- Replace character.
SELECT REPLACE(FullName,'a','A')
FROM Employee;


-- Reverse names.
SELECT REVERSE(FullName)
FROM Employee;


-- Remove leading spaces.
SELECT LTRIM('     SQL Server');


-- Remove trailing spaces.
SELECT RTRIM('SQL Server     ');


/******************************************************************************
    DATE FUNCTIONS
******************************************************************************/

-- Current date and time.
SELECT GETDATE();


-- Current year.
SELECT YEAR(GETDATE());


-- Current month.
SELECT MONTH(GETDATE());


-- Current day.
SELECT DAY(GETDATE());


-- Current month name.
SELECT DATENAME(MONTH,GETDATE());


-- Current weekday.
SELECT DATENAME(WEEKDAY,GETDATE());


-- Current quarter.
SELECT DATEPART(QUARTER,GETDATE());


-- Add 10 days.
SELECT DATEADD(DAY,10,GETDATE());


-- Add 2 months.
SELECT DATEADD(MONTH,2,GETDATE());


-- Add 1 year.
SELECT DATEADD(YEAR,1,GETDATE());


/******************************************************************************
    DATEDIFF
******************************************************************************/

-- Difference in years.
SELECT DATEDIFF(YEAR,DateOfJoin,GETDATE())
FROM Employee;


-- Difference in months.
SELECT DATEDIFF(MONTH,DateOfJoin,GETDATE())
FROM Employee;


-- Difference in days.
SELECT DATEDIFF(DAY,DateOfJoin,GETDATE())
FROM Employee;


/******************************************************************************
    ARITHMETIC EXPRESSIONS
******************************************************************************/

SELECT 10 + 20 AS Addition;

SELECT 50 - 20 AS Subtraction;

SELECT 10 * 5 AS Multiplication;

SELECT 100 / 5 AS Division;

SELECT 100 % 7 AS Modulus;


/******************************************************************************
    CONSTANT VALUES
******************************************************************************/

SELECT 'SQL Server' AS DatabaseName;

SELECT 'LearningSQLDB' AS DatabaseName,
       GETDATE() AS CurrentDate;


/******************************************************************************
    NULL VALUE
******************************************************************************/

SELECT NULL AS EmptyColumn;


/******************************************************************************
    SYSTEM INFORMATION
******************************************************************************/

-- SQL Server version.
SELECT @@VERSION;


-- Server name.
SELECT @@SERVERNAME;


-- Current database.
SELECT DB_NAME();


-- Current user.
SELECT USER_NAME();


-- Current login.
SELECT SUSER_NAME();


/******************************************************************************
    CASE EXPRESSION
******************************************************************************/

SELECT FullName,
       Salary,
       CASE
            WHEN Salary >= 70000 THEN 'High Salary'
            WHEN Salary >= 30000 THEN 'Medium Salary'
            ELSE 'Low Salary'
       END AS SalaryCategory
FROM Employee;
```
