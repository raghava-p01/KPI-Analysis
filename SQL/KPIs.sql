---Total Revenue
SELECT SUM(Revenue) AS Total_Revenue
FROM retail_full;

---Monthly Revenue Trend
SELECT 
    YearMonth,
    SUM(Revenue) AS Monthly_Revenue
FROM retail_full
GROUP BY YearMonth
ORDER BY YearMonth;

---Average Order Value (AOV)
SELECT AVG(OrderValue) AS AOV
FROM (
    SELECT InvoiceNo, SUM(Revenue) AS OrderValue
    FROM retail_full
    GROUP BY InvoiceNo
) AS orders;

---Total Customers
SELECT COUNT(DISTINCT CustomerID) AS Total_Customers
FROM retail_customers;

---Top 10 Products
SELECT TOP 10 Description, SUM(Revenue) AS Product_Revenue
FROM retail_products
GROUP BY Description
ORDER BY Product_Revenue DESC;