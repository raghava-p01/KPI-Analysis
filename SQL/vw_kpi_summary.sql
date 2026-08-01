CREATE VIEW vw_kpi_summary AS
SELECT
    COUNT(DISTINCT InvoiceNo) AS TotalOrders,
    COUNT(DISTINCT CustomerID) AS TotalCustomers,
    SUM(Quantity * UnitPrice) AS TotalRevenue,
    AVG(Quantity * UnitPrice) AS AverageOrderValue
FROM retail_full
WHERE Quantity > 0 AND UnitPrice > 0;