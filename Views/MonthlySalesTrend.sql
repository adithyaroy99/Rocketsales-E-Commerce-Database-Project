CREATE VIEW MonthlySalesTrend AS
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS YearMonth, SUM(TotalAmount) AS TotalSales
FROM `Order`
GROUP BY YearMonth
ORDER BY YearMonth;
