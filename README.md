````markdown
# MS SQL Server Zero to Hero

Simple SQL Server examples from Beginner to Advanced.

This repository contains practical examples, outputs, explanations, and interview-oriented scenarios.

---

## What Is SQL?

SQL stands for Structured Query Language.

SQL is used to:

- Store data
- Retrieve data
- Update data
- Delete data
- Analyze data

Simple meaning:

```text
SQL = Data + Queries + Results
```

Example:

```sql
SELECT *
FROM Employee
WHERE Salary > 30000;
```

---

## Learning Path

```text
Database Setup
     ↓
SELECT
     ↓
WHERE
     ↓
ORDER BY
     ↓
GROUP BY
     ↓
HAVING
     ↓
CASE
     ↓
JOINS
     ↓
SUBQUERIES
     ↓
CTE
     ↓
WINDOW FUNCTIONS
     ↓
STORED PROCEDURES
     ↓
INDEXES
     ↓
PERFORMANCE TUNING
```

---

## Project Structure

```text
MS_SQL_Server_Zero_To_Hero/
│
├── 01_Database_Setup.sql
├── 02_Select_Queries.sql
├── 03_Where_Queries.sql
├── 04_OrderBy_Queries.sql
├── 05_GroupBy_Queries.sql
├── 06_Having_Queries.sql
├── 07_Case_Queries.sql
├── 08_Joins.sql
├── 09_Subqueries.sql
├── 10_CTE.sql
├── 11_Window_Functions.sql
├── 12_Views.sql
├── 13_Stored_Procedures.sql
├── 14_Functions.sql
├── 15_Triggers.sql
├── 16_Transactions.sql
├── 17_Indexes.sql
├── 18_Performance_Tuning.sql
└── README.md
```

---

## Topics Covered

### Database Setup

- Create Database
- Create Table
- Insert Data

### SELECT Queries

- SELECT *
- DISTINCT
- TOP
- Aliases
- Aggregate Functions

### WHERE Queries

- Comparison Operators
- BETWEEN
- IN
- LIKE
- NULL
- AND
- OR

### ORDER BY

- ASC
- DESC
- Multiple Columns

### GROUP BY

- COUNT
- SUM
- AVG
- MIN
- MAX

### HAVING

- Aggregate Filters

### CASE

- Simple CASE
- Search CASE

### JOINS

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN

### SUBQUERIES

- Scalar Subquery
- Correlated Subquery

### CTE

- Common Table Expressions

### WINDOW FUNCTIONS

- ROW_NUMBER
- RANK
- DENSE_RANK
- LEAD
- LAG

### PERFORMANCE TUNING

- Clustered Index
- Non-Clustered Index
- Execution Plans
- Query Optimization

---

## Example

Query:

```sql
SELECT *
FROM Employee
WHERE Salary > 30000;
```

Output:

```text
EmployeeId  FullName  Salary
1           sham      33000
2           ram       32000
3           bhim      43000
...
```

---

## Future Improvements

- More Interview Questions
- Real-World Scenarios
- Advanced SQL Server Concepts
- Execution Plans
- Partitioning
- Indexing Strategies

---

## Interview Line

> I built a complete Microsoft SQL Server learning repository containing practical examples, outputs, explanations, and interview-oriented scenarios from beginner to advanced topics.
````
