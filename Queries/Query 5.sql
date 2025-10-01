-- Query 5: Monthly Product Sales Ranking (Demonstrates Window Functions)

SELECT
  MonthlySales.YearMonth,
  MonthlySales.ProductID,
  p.Name,
  MonthlySales.TotalQuantity,
  RANK() OVER (PARTITION BY MonthlySales.YearMonth ORDER BY MonthlySales.TotalQuantity DESC) AS SalesRank
FROM
  (
    SELECT
      DATE_FORMAT(o.OrderDate, '%Y-%m') AS YearMonth,
      oi.ProductID,
      SUM(oi.Quantity) AS TotalQuantity
    FROM `Order` o
    JOIN OrderItem oi ON o.OrderID = oi.OrderID
    GROUP BY YearMonth, oi.ProductID
  ) AS MonthlySales
JOIN Product p ON MonthlySales.ProductID = p.ProductID
ORDER BY YearMonth, SalesRank;
