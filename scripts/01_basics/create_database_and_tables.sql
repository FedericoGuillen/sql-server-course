-- Create database
CREATE DATABASE Company;
GO

USE Company;
GO

-- Employees table
CREATE TABLE dbo.tableEmployees (
    EmployeeID INT PRIMARY KEY NOT NULL ,
    EmployeeName VARCHAR(50) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    DepID INT NOT NULL
);
GO

-- Departments table
CREATE TABLE tableDepartments(
    DepID INT PRIMARY KEY NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL
);
GO
