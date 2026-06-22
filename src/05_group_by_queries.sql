/******************************************************************************
    MS SQL SERVER - GROUP BY QUERIES (ZERO TO HERO)
    Table Used : Employee
******************************************************************************/

USE LearningSQLDB;
GO


/******************************************************************************
    GROUP BY STATUS
******************************************************************************/

-- Count employees by status.
SELECT Status,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Status;


/******************************************************************************
    GROUP BY YEAR
******************************************************************************/

-- Count employees by joining year.
SELECT YEAR(DateOfJoin) AS JoiningYear,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY YEAR(DateOfJoin);


/******************************************************************************
    GROUP BY MONTH
******************************************************************************/

-- Count employees by joining month.
SELECT MONTH(DateOfJoin) AS JoiningMonth,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY MONTH(DateOfJoin);


/******************************************************************************
    GROUP BY YEAR AND MONTH
******************************************************************************/

-- Count employees by year and month.
SELECT YEAR(DateOfJoin) AS JoiningYear,
       MONTH(DateOfJoin) AS JoiningMonth,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY YEAR(DateOfJoin),
         MONTH(DateOfJoin);


/******************************************************************************
    COUNT
******************************************************************************/

-- Count employees by status.
SELECT Status,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Status;


/******************************************************************************
    SUM
******************************************************************************/

-- Total salary by status.
SELECT Status,
       SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Status;


/******************************************************************************
    AVG
******************************************************************************/

-- Average salary by status.
SELECT Status,
       AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Status;


/******************************************************************************
    MIN
******************************************************************************/

-- Minimum salary by status.
SELECT Status,
       MIN(Salary) AS MinimumSalary
FROM Employee
GROUP BY Status;


/******************************************************************************
    MAX
******************************************************************************/

-- Maximum salary by status.
SELECT Status,
       MAX(Salary) AS MaximumSalary
FROM Employee
GROUP BY Status;


/******************************************************************************
    MULTIPLE AGGREGATE FUNCTIONS
******************************************************************************/

-- Summary by status.
SELECT Status,
       COUNT(*) AS TotalEmployees,
       SUM(Salary) AS TotalSalary,
       AVG(Salary) AS AverageSalary,
       MIN(Salary) AS MinimumSalary,
       MAX(Salary) AS MaximumSalary
FROM Employee
GROUP BY Status;


/******************************************************************************
    GROUP BY YEAR WITH AGGREGATES
******************************************************************************/

-- Salary statistics by joining year.
SELECT YEAR(DateOfJoin) AS JoiningYear,
       COUNT(*) AS TotalEmployees,
       SUM(Salary) AS TotalSalary,
       AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY YEAR(DateOfJoin);


/******************************************************************************
    GROUP BY MONTH NAME
******************************************************************************/

-- Employees by month name.
SELECT DATENAME(MONTH, DateOfJoin) AS MonthName,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY DATENAME(MONTH, DateOfJoin);


/******************************************************************************
    GROUP BY QUARTER
******************************************************************************/

-- Employees by quarter.
SELECT DATEPART(QUARTER, DateOfJoin) AS QuarterNo,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY DATEPART(QUARTER, DateOfJoin);


/******************************************************************************
    GROUP BY DAY
******************************************************************************/

-- Employees by joining day.
SELECT DAY(DateOfJoin) AS JoiningDay,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY DAY(DateOfJoin);


/******************************************************************************
    GROUP BY NAME LENGTH
******************************************************************************/

-- Employees by length of name.
SELECT LEN(FullName) AS NameLength,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY LEN(FullName);


/******************************************************************************
    GROUP BY FIRST LETTER
******************************************************************************/

-- Employees by first character.
SELECT LEFT(FullName,1) AS FirstLetter,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY LEFT(FullName,1);


/******************************************************************************
    GROUP BY STATUS AND YEAR
******************************************************************************/

-- Employees grouped by status and joining year.
SELECT Status,
       YEAR(DateOfJoin) AS JoiningYear,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Status,
         YEAR(DateOfJoin);


/******************************************************************************
    GROUP BY STATUS AND MONTH
******************************************************************************/

-- Employees grouped by status and month.
SELECT Status,
       MONTH(DateOfJoin) AS JoiningMonth,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Status,
         MONTH(DateOfJoin);


/******************************************************************************
    GROUP BY STATUS WITH SALARY SUMMARY
******************************************************************************/

-- Salary summary by status.
SELECT Status,
       COUNT(*) AS EmployeeCount,
       SUM(Salary) AS TotalSalary,
       AVG(Salary) AS AverageSalary,
       MIN(Salary) AS MinimumSalary,
       MAX(Salary) AS MaximumSalary
FROM Employee
GROUP BY Status;


/******************************************************************************
    ORDER BY WITH GROUP BY
******************************************************************************/

-- Status summary sorted by average salary descending.
SELECT Status,
       AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Status
ORDER BY AverageSalary DESC;


/******************************************************************************
    GROUP BY WITH WHERE
******************************************************************************/

-- Active employees grouped by year.
SELECT YEAR(DateOfJoin) AS JoiningYear,
       COUNT(*) AS TotalEmployees
FROM Employee
WHERE Status = 'Active'
GROUP BY YEAR(DateOfJoin);


/******************************************************************************
    DISTINCT VS GROUP BY
******************************************************************************/

-- Unique statuses using GROUP BY.
SELECT Status
FROM Employee
GROUP BY Status;


/******************************************************************************
    GROUP BY ALL SELECTED COLUMNS
******************************************************************************/

-- Count employees by year and status.
SELECT YEAR(DateOfJoin) AS JoiningYear,
       Status,
       COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY YEAR(DateOfJoin),
         Status;


/******************************************************************************
    IMPORTANT RULE
******************************************************************************/

-- INVALID QUERY
/*
SELECT FullName,
       Status,
       COUNT(*)
FROM Employee
GROUP BY Status;

Error:
Column 'Employee.FullName' is invalid in the select list because
it is not contained in either an aggregate function or the GROUP BY clause.
*/


-- VALID QUERY
SELECT Status,
       COUNT(*)
FROM Employee
GROUP BY Status;
