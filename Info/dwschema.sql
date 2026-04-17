create database ABschema

USE ABschema;
GO
select * from Fact_Sales


CREATE TABLE Date_Dim (
    Date_id DATETIME PRIMARY KEY, -- Fixed: Removed extra comma
    year INT,
    month INT,
    day INT
);


CREATE TABLE Customer_Dim (
    Customer_SK INT PRIMARY KEY, 
     CUSTOMER_ID VARCHAR(5);
    address VARCHAR(100),
    phone VARCHAR(100),
    region VARCHAR(100) 
);


CREATE TABLE Product_Dim (
    PRODUCT_ID INT PRIMARY KEY,
    product_name VARCHAR(100),
    UnitPrice INT,
    Unitinstock INT,
    Isdiscounted BIT
);


CREATE TABLE Dim_Employee (
    Employee_ID INT PRIMARY KEY,
    First_Name VARCHAR(100),
    Last_Name VARCHAR(100),
    Hiredate INT
);

CREATE TABLE Suppliers_Dim (
    SUPPLIER_ID INT PRIMARY KEY,
    address VARCHAR(100),
    region VARCHAR(100),
    phone VARCHAR(100),
    company_name VARCHAR(100)
);

CREATE TABLE Region_Dim (
    REGION_ID INT PRIMARY KEY,
    Region_description VARCHAR(100)
);


CREATE TABLE Fact_Sales (
    Sales_ID INT PRIMARY KEY, 
    Date_id DATETIME, 
    Customer_SK INT, 
    CustomerID VARCHAR(5),
    PRODUCT_ID INT,
    Employee_ID INT,
    SUPPLIER_ID INT,
    REGION_ID INT,
    

    Quantity_Sold INT,
   Unit_Price_At_Sale FLOAT,
   Total_Sales_Amount FLOAT,
   Discount_PERCENTAGE FLOAT,
    

    CONSTRAINT FK_Date FOREIGN KEY (Date_id) REFERENCES Date_Dim(Date_id),
    CONSTRAINT FK_Customer FOREIGN KEY (Customer_SK) REFERENCES Customer_Dim(Customer_SK),
    CONSTRAINT FK_Product FOREIGN KEY (PRODUCT_ID) REFERENCES Product_Dim(PRODUCT_ID),
    CONSTRAINT FK_Employee FOREIGN KEY (Employee_ID) REFERENCES Dim_Employee(Employee_ID),
    CONSTRAINT FK_Supplier FOREIGN KEY (SUPPLIER_ID) REFERENCES Suppliers_Dim(SUPPLIER_ID),
    CONSTRAINT FK_Region FOREIGN KEY (REGION_ID) REFERENCES Region_Dim(REGION_ID)
);
