--- Creating a DataBase
CREATE DATABASE ecommerce_analytics;
GO
USE ecommerce_analytics;

--- Creating the Complete Retail Table
CREATE TABLE retail_full (
    InvoiceNo NVARCHAR(20),
    StockCode NVARCHAR(20),
    Description NVARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice FLOAT,
    CustomerID FLOAT,
    Country NVARCHAR(100),
    Revenue FLOAT,
    Year INT,
    Month INT,
    YearMonth NVARCHAR(10)
);

--- Creating the Customer Table
CREATE TABLE retail_customers (
    InvoiceNo NVARCHAR(20),
    StockCode NVARCHAR(20),
    Description NVARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice FLOAT,
    CustomerID INT,
    Country NVARCHAR(100),
    Revenue FLOAT,
    Year INT,
    Month INT,
    YearMonth NVARCHAR(10)
);

--- Crrating the Products Table
CREATE TABLE retail_products (
    InvoiceNo NVARCHAR(20),
    StockCode NVARCHAR(20),
    Description NVARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice FLOAT,
    CustomerID FLOAT,
    Country NVARCHAR(100),
    Revenue FLOAT,
    Year INT,
    Month INT,
    YearMonth NVARCHAR(10)
);