--Ensures that all values in a column satisfy certain conditions

Create Table tableEmployees(
 EmployeeID int primary key Not Null,
 EmployeeName varchar(50) Not Null,
 Phone int Not Null,
 Age int Not Null CHECK(Age >= 18),
 DepID int Not Null,
 )

 --Add same constraint
 Alter Table tableEmployees
 Add Constraint CHK_EmployeeAge
 CHECK(Age >= 18)

 Alter Table tableEmployees
 Drop Constraint CHK_EmployeeAge