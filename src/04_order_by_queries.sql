/******************************************************************************
    MS SQL SERVER - ORDER BY QUERIES (ZERO TO HERO)
    Table Used : Employee
******************************************************************************/

USE LearningSQLDB;
GO


/******************************************************************************
    ORDER BY SINGLE COLUMN
******************************************************************************/

-- Sort employees by EmployeeId in ascending order (default).
SELECT *
FROM Employee
ORDER BY EmployeeId;

-- Sort employees by EmployeeId in descending order.
SELECT *
FROM Employee
ORDER BY EmployeeId DESC;

-- Sort employees by FullName in ascending order.
SELECT *
FROM Employee
ORDER BY FullName;

-- Sort employees by FullName in descending order.
SELECT *
FROM Employee
ORDER BY FullName DESC;

-- Sort employees by Salary in ascending order.
SELECT *
FROM Employee
ORDER BY Salary ASC;

-- Sort employees by Salary in descending order.
SELECT *
FROM Employee
ORDER BY Salary DESC;


/******************************************************************************
    ORDER BY MULTIPLE COLUMNS
******************************************************************************/

-- Sort by Status and then Salary.
SELECT *
FROM Employee
ORDER BY Status, Salary;

-- Sort by Status ascending and Salary descending.
SELECT *
FROM Employee
ORDER BY Status ASC,
         Salary DESC;

-- Sort by joining date and then salary.
SELECT *
FROM Employee
ORDER BY DateOfJoin,
         Salary DESC;


/******************************************************************************
    ORDER BY COLUMN POSITION
******************************************************************************/

-- Sort by second selected column.
SELECT EmployeeId,
       FullName,
       Salary
FROM Employee
ORDER BY 2;

-- Sort by third selected column descending.
SELECT EmployeeId,
       FullName,
       Salary
FROM Employee
ORDER BY 3 DESC;


/******************************************************************************
    ORDER BY ALIAS
******************************************************************************/

-- Sort using column alias.
SELECT EmployeeId,
       FullName,
       Salary AS MonthlySalary
FROM Employee
ORDER BY MonthlySalary DESC;


/******************************************************************************
    ORDER BY STRING FUNCTIONS
******************************************************************************/

-- Sort names alphabetically after converting to uppercase.
SELECT *
FROM Employee
ORDER BY UPPER(FullName);

-- Sort by length of employee name.
SELECT FullName,
       LEN(FullName) AS NameLength
FROM Employee
ORDER BY NameLength;

-- Sort by name length descending.
SELECT FullName,
       LEN(FullName) AS NameLength
FROM Employee
ORDER BY NameLength DESC;


/******************************************************************************
    ORDER BY DATE FUNCTIONS
******************************************************************************/

-- Sort employees by year of joining.
SELECT *
FROM Employee
ORDER BY YEAR(DateOfJoin);

-- Sort employees by month of joining.
SELECT *
FROM Employee
ORDER BY MONTH(DateOfJoin);

-- Sort employees by day of joining.
SELECT *
FROM Employee
ORDER BY DAY(DateOfJoin);

-- Sort employees by quarter of joining.
SELECT *
FROM Employee
ORDER BY DATEPART(QUARTER, DateOfJoin);


/******************************************************************************
    ORDER BY CALCULATED COLUMN
******************************************************************************/

-- Sort by annual salary.
SELECT FullName,
       Salary,
       Salary * 12 AS AnnualSalary
FROM Employee
ORDER BY AnnualSalary DESC;

-- Sort by bonus amount.
SELECT FullName,
       Salary,
       Salary * 0.10 AS Bonus
FROM Employee
ORDER BY Bonus DESC;


/******************************************************************************
    ORDER BY WITH TOP
******************************************************************************/

-- Top 3 highest-paid employees.
SELECT TOP 3 *
FROM Employee
ORDER BY Salary DESC;

-- Top 3 lowest-paid employees.
SELECT TOP 3 *
FROM Employee
ORDER BY Salary ASC;

-- Top 5 recently joined employees.
SELECT TOP 5 *
FROM Employee
ORDER BY DateOfJoin DESC;


/******************************************************************************
    ORDER BY WITH WHERE
******************************************************************************/

-- Active employees sorted by salary.
SELECT *
FROM Employee
WHERE Status = 'Active'
ORDER BY Salary DESC;

-- Employees with salary above 30000 sorted by name.
SELECT *
FROM Employee
WHERE Salary > 30000
ORDER BY FullName;


/******************************************************************************
    ORDER BY NULL VALUES
******************************************************************************/

-- Sort by phone number.
SELECT *
FROM Employee
ORDER BY PhoneNo;


/******************************************************************************
    ORDER BY RANDOM
******************************************************************************/

-- Retrieve records in random order.
SELECT *
FROM Employee
ORDER BY NEWID();


/******************************************************************************
    ORDER BY CASE
******************************************************************************/

-- Custom sorting by status.
SELECT *
FROM Employee
ORDER BY
CASE
    WHEN Status = 'Active' THEN 1
    ELSE 2
END;

-- Active employees first, then highest salary.
SELECT *
FROM Employee
ORDER BY
CASE
    WHEN Status = 'Active' THEN 1
    ELSE 2
END,
Salary DESC;


/******************************************************************************
    ORDER BY MULTIPLE CONDITIONS
******************************************************************************/

-- Sort by Status, Year of Joining and Salary.
SELECT *
FROM Employee
ORDER BY Status,
         YEAR(DateOfJoin),
         Salary DESC;


/******************************************************************************
    ORDER BY REVERSE NAME
******************************************************************************/

-- Sort by reversed employee names.
SELECT *
FROM Employee
ORDER BY REVERSE(FullName);


/******************************************************************************
    ORDER BY CURRENT YEAR DIFFERENCE
******************************************************************************/

-- Employees with oldest joining dates first.
SELECT *,
       DATEDIFF(YEAR, DateOfJoin, GETDATE()) AS ExperienceYears
FROM Employee
ORDER BY ExperienceYears DESC;

-- Employees with newest joining dates first.
SELECT *,
       DATEDIFF(YEAR, DateOfJoin, GETDATE()) AS ExperienceYears
FROM Employee
ORDER BY ExperienceYears ASC;
