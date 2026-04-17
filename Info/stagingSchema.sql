create database staging_project1



USE staging_project1;
GO
select * from Stg_Sales


CREATE TABLE Stg_Date (
    DateID DATETIME,
    Year INT,
    Month INT,
    Day INT
);


CREATE TABLE Stg_Customer (
    CustomerID VARCHAR(5), 
    Address VARCHAR(100),
    Phone VARCHAR(100),
    Region VARCHAR(100)
);

CREATE TABLE Stg_Product (
    ProductID INT,
    ProductName VARCHAR(100),
    UnitPrice FLOAT,
    UnitInStock INT,
    DiscountPercentage FLOAT 
);


CREATE TABLE Stg_Employee (
    EmployeeID INT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    HireDate DATE  
);


CREATE TABLE Stg_Supplier (
    SupplierID INT,
    Address VARCHAR(100),
    Phone VARCHAR(100),
    Region VARCHAR(100),
    CompanyName VARCHAR(100)
);


CREATE TABLE Stg_Region (
    RegionID INT,
    RegionDescription VARCHAR(100)
);



CREATE TABLE Stg_Sales (
    SalesTransactionID INT,
    DateID DATETIME,
    CustomerID VARCHAR(5), -- Changed to VARCHAR to match Customer table
    ProductID INT,
    Quantity_Sold INT,
    UnitPrice FLOAT,
    Unit_Price_At_Sale FLOAT,
    Discount_PERCENTAGE FLOAT, -- Added this to capture the 0.25, etc.
    Total_Sales_Amount FLOAT,
      REGION_ID INT,
    SUPPLIER_ID INT,
    Employee_ID INT
);


  
