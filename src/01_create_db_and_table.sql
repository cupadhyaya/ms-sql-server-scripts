/******************************************************************************
    CREATE DATABASE
******************************************************************************/

-- Check whether the database 'LearningSQLDB' already exists.
-- DB_ID() returns NULL if the database is not found.
IF DB_ID('LearningSQLDB') IS NULL
BEGIN
    -- Create the database if it does not exist.
    CREATE DATABASE LearningSQLDB;
END;
GO


/******************************************************************************
    USE DATABASE
******************************************************************************/

-- Switch the current connection to use LearningSQLDB.
USE LearningSQLDB;
GO


/******************************************************************************
    DROP EXISTING TABLE
******************************************************************************/

-- Check whether the Employee table already exists.
-- OBJECT_ID() returns NULL if the table is not found.
IF OBJECT_ID('dbo.Employee', 'U') IS NOT NULL
BEGIN
    -- Delete the existing Employee table.
    DROP TABLE Employee;
END;
GO


/******************************************************************************
    CREATE TABLE
******************************************************************************/

-- Create a new Employee table.
CREATE TABLE Employee
(
    -- Unique identifier for each employee.
    EmployeeId INT PRIMARY KEY,

    -- Stores employee full name.
    FullName VARCHAR(200),

    -- Stores employee email address.
    EmailId VARCHAR(300),

    -- Stores employee phone number.
    PhoneNo VARCHAR(20),

    -- Stores employee joining date.
    DateOfJoin DATETIME,

    -- Stores employee salary.
    Salary DECIMAL(10,2),

    -- Stores employee status such as Active or InActive.
    Status VARCHAR(10)
);
GO


/******************************************************************************
    INSERT SAMPLE DATA
******************************************************************************/

-- Insert sample employee records into the Employee table.
INSERT INTO Employee
VALUES
(1, 'sham',    'sham@text.com',    '9809898990', '2023-10-10', 33000, 'Active'),
(2, 'ram',     'ram@text.com',     '9809898991', '2023-10-05', 32000, 'Active'),
(3, 'bhim',    'bhim@text.com',    '9809898992', '2023-10-04', 43000, 'Active'),
(4, 'cena',    'cena@text.com',    '9809898993', '2022-10-10', 11000, 'Active'),
(5, 'rock',    'rock@text.com',    '9809898994', '2022-10-08', 66000, 'Active'),
(6, 'edge',    'edge@text.com',    '9809898995', '2021-10-03', 44000, 'Active'),
(7, 'siri',    'siri@text.com',    '9809898996', '2021-10-09', 14000, 'Active'),
(8, 'nick',    'nick@text.com',    '9809898997', '2021-10-11', 89000, 'Active'),
(9, 'batista', 'batista.com',      '9809898998', '2020-10-11', 79000, 'InActive'),
(10,'ramesh',  'ramesh@text.com',  '9809898910', '2020-10-09', 42000, 'InActive');
GO


/******************************************************************************
    DISPLAY ALL EMPLOYEES
******************************************************************************/

-- Retrieve all records from the Employee table.
SELECT *
FROM Employee;


/*

Expected Output

EmployeeId  FullName  EmailId           PhoneNo      DateOfJoin   Salary  Status
----------  --------  ----------------  -----------  ----------   ------  --------
1           sham      sham@text.com     9809898990   2023-10-10   33000   Active
2           ram       ram@text.com      9809898991   2023-10-05   32000   Active
3           bhim      bhim@text.com     9809898992   2023-10-04   43000   Active
4           cena      cena@text.com     9809898993   2022-10-10   11000   Active
5           rock      rock@text.com     9809898994   2022-10-08   66000   Active
6           edge      edge@text.com     9809898995   2021-10-03   44000   Active
7           siri      siri@text.com     9809898996   2021-10-09   14000   Active
8           nick      nick@text.com     9809898997   2021-10-11   89000   Active
9           batista   batista.com       9809898998   2020-10-11   79000   InActive
10          ramesh    ramesh@text.com   9809898910   2020-10-09   42000   InActive

*/