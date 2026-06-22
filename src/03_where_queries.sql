/******************************************************************************
    MS SQL SERVER - WHERE QUERIES (ZERO TO HERO)
    Table Used : Employee
******************************************************************************/

USE LearningSQLDB;
GO


/******************************************************************************
    EQUAL TO (=)
******************************************************************************/

-- Retrieve employee whose EmployeeId is 8.
SELECT *
FROM Employee
WHERE EmployeeId = 8;


-- Retrieve employee whose name is 'ramesh'.
SELECT *
FROM Employee
WHERE FullName = 'ramesh';


-- Retrieve employees having Active status.
SELECT *
FROM Employee
WHERE Status = 'Active';


/******************************************************************************
    NOT EQUAL TO (<>)
******************************************************************************/

-- Retrieve employees whose status is not Active.
SELECT *
FROM Employee
WHERE Status <> 'Active';


-- Retrieve employees whose name is not ramesh.
SELECT *
FROM Employee
WHERE FullName <> 'ramesh';


/******************************************************************************
    GREATER THAN (>)
******************************************************************************/

-- Salary greater than 30000.
SELECT *
FROM Employee
WHERE Salary > 30000;


-- Salary greater than 50000.
SELECT *
FROM Employee
WHERE Salary > 50000;


/******************************************************************************
    LESS THAN (<)
******************************************************************************/

-- Salary less than 30000.
SELECT *
FROM Employee
WHERE Salary < 30000;


-- Salary less than 50000.
SELECT *
FROM Employee
WHERE Salary < 50000;


/******************************************************************************
    GREATER THAN OR EQUAL TO (>=)
******************************************************************************/

-- Salary greater than or equal to 30000.
SELECT *
FROM Employee
WHERE Salary >= 30000;


/******************************************************************************
    LESS THAN OR EQUAL TO (<=)
******************************************************************************/

-- Salary less than or equal to 30000.
SELECT *
FROM Employee
WHERE Salary <= 30000;


/******************************************************************************
    AND OPERATOR
******************************************************************************/

-- Active employees earning more than 30000.
SELECT *
FROM Employee
WHERE Status = 'Active'
AND Salary > 30000;


-- Active employees joined in 2023.
SELECT *
FROM Employee
WHERE Status = 'Active'
AND YEAR(DateOfJoin) = 2023;


/******************************************************************************
    OR OPERATOR
******************************************************************************/

-- Salary greater than 50000 or less than 20000.
SELECT *
FROM Employee
WHERE Salary > 50000
OR Salary < 20000;


-- Active employees or employees joined in 2020.
SELECT *
FROM Employee
WHERE Status = 'Active'
OR YEAR(DateOfJoin) = 2020;


/******************************************************************************
    NOT OPERATOR
******************************************************************************/

-- Employees whose status is not InActive.
SELECT *
FROM Employee
WHERE NOT Status = 'InActive';


/******************************************************************************
    BETWEEN
******************************************************************************/

-- Salary between 30000 and 50000.
SELECT *
FROM Employee
WHERE Salary BETWEEN 30000 AND 50000;


-- Joining dates between two years.
SELECT *
FROM Employee
WHERE DateOfJoin BETWEEN '2021-01-01'
                     AND '2023-12-31';


/******************************************************************************
    NOT BETWEEN
******************************************************************************/

-- Salary outside the range.
SELECT *
FROM Employee
WHERE Salary NOT BETWEEN 30000 AND 50000;


/******************************************************************************
    IN
******************************************************************************/

-- EmployeeId 1,3,5.
SELECT *
FROM Employee
WHERE EmployeeId IN (1,3,5);


-- Employees with Active and InActive status.
SELECT *
FROM Employee
WHERE Status IN ('Active','InActive');


/******************************************************************************
    NOT IN
******************************************************************************/

-- Exclude EmployeeId 1,3,5.
SELECT *
FROM Employee
WHERE EmployeeId NOT IN (1,3,5);


/******************************************************************************
    LIKE
******************************************************************************/

-- Starts with r.
SELECT *
FROM Employee
WHERE FullName LIKE 'r%';


-- Ends with m.
SELECT *
FROM Employee
WHERE FullName LIKE '%m';


-- Contains am.
SELECT *
FROM Employee
WHERE FullName LIKE '%am%';


-- Second character should be a.
SELECT *
FROM Employee
WHERE FullName LIKE '_a%';


-- Exactly four characters.
SELECT *
FROM Employee
WHERE FullName LIKE '____';


-- Starts with s or r.
SELECT *
FROM Employee
WHERE FullName LIKE '[sr]%';


-- Starts with any character from a to m.
SELECT *
FROM Employee
WHERE FullName LIKE '[a-m]%';


/******************************************************************************
    NULL
******************************************************************************/

-- Phone number is NULL.
SELECT *
FROM Employee
WHERE PhoneNo IS NULL;


-- Phone number is not NULL.
SELECT *
FROM Employee
WHERE PhoneNo IS NOT NULL;


/******************************************************************************
    YEAR
******************************************************************************/

-- Employees joined in 2020.
SELECT *
FROM Employee
WHERE YEAR(DateOfJoin) = 2020;


-- Employees joined in 2021.
SELECT *
FROM Employee
WHERE YEAR(DateOfJoin) = 2021;


-- Employees joined in current year.
SELECT *
FROM Employee
WHERE YEAR(DateOfJoin) = YEAR(GETDATE());


/******************************************************************************
    MONTH
******************************************************************************/

-- Employees joined in October.
SELECT *
FROM Employee
WHERE MONTH(DateOfJoin) = 10;


-- Employees joined in current month.
SELECT *
FROM Employee
WHERE MONTH(DateOfJoin) = MONTH(GETDATE());


/******************************************************************************
    DAY
******************************************************************************/

-- Employees joined on day 10.
SELECT *
FROM Employee
WHERE DAY(DateOfJoin) = 10;


/******************************************************************************
    DATEPART
******************************************************************************/

-- Quarter 4 employees.
SELECT *
FROM Employee
WHERE DATEPART(QUARTER,DateOfJoin) = 4;


-- Week 40 employees.
SELECT *
FROM Employee
WHERE DATEPART(WEEK,DateOfJoin) = 40;


/******************************************************************************
    DATENAME
******************************************************************************/

-- Joined in October.
SELECT *
FROM Employee
WHERE DATENAME(MONTH,DateOfJoin) = 'October';


-- Joined on Monday.
SELECT *
FROM Employee
WHERE DATENAME(WEEKDAY,DateOfJoin) = 'Monday';


/******************************************************************************
    CURRENT DATE FILTERS
******************************************************************************/

-- Last 7 days.
SELECT *
FROM Employee
WHERE DateOfJoin >= DATEADD(DAY,-7,GETDATE());


-- Last 30 days.
SELECT *
FROM Employee
WHERE DateOfJoin >= DATEADD(DAY,-30,GETDATE());


/******************************************************************************
    STRING FUNCTIONS IN WHERE
******************************************************************************/

-- Case-insensitive search.
SELECT *
FROM Employee
WHERE UPPER(FullName) = UPPER('ramesh');


-- Name length is 4.
SELECT *
FROM Employee
WHERE LEN(FullName) = 4;


-- Name length greater than 4.
SELECT *
FROM Employee
WHERE LEN(FullName) > 4;


/******************************************************************************
    EVEN AND ODD IDs
******************************************************************************/

-- Even EmployeeId.
SELECT *
FROM Employee
WHERE EmployeeId % 2 = 0;


-- Odd EmployeeId.
SELECT *
FROM Employee
WHERE EmployeeId % 2 <> 0;


/******************************************************************************
    AGGREGATE SUBQUERIES
******************************************************************************/

-- Employee with minimum salary.
SELECT *
FROM Employee
WHERE Salary =
(
    SELECT MIN(Salary)
    FROM Employee
);


-- Employee with maximum salary.
SELECT *
FROM Employee
WHERE Salary =
(
    SELECT MAX(Salary)
    FROM Employee
);


-- Employees earning above average salary.
SELECT *
FROM Employee
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employee
);


-- Employees earning below average salary.
SELECT *
FROM Employee
WHERE Salary <
(
    SELECT AVG(Salary)
    FROM Employee
);