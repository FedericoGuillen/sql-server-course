CREATE TABLE dbo.tableDepartments (
        DepID INT  PRIMARY KEY  NOT NULL ,
        DepartmentName VARCHAR(50) NOT NULL
 );

 
 Create Table tableEmployees(
 EmployeeID int primary key Not Null,
 EmployeeName varchar(50) Not Null,
 Phone int Not Null,
 DepID int FOREIGN KEY references tableDepartments(DepID) Not Null,
 )