-- Query Performance and Optimization (LO3)

-- Original Inefficient Query # Query 5: Monthly Product Sales Ranking (Demonstrates Window Functions)

/* Adding Indexes: Added a composite index on Order. OrderDate and OrderItem.ProductID to speed up the join 
and grouping in the subquery */
CREATE INDEX idx_order_date ON `Order`(OrderDate);
CREATE INDEX idx_orderitem_product ON OrderItem(ProductID);

-- Optimized Query using Common Table Expression (CTE) for better optimization.
WITH MonthlySales AS (
  SELECT
    DATE_FORMAT(o.OrderDate, '%Y-%m') AS YearMonth,
    oi.ProductID,
    SUM(oi.Quantity) AS TotalQuantity
  FROM `Order` o
  JOIN OrderItem oi ON o.OrderID = oi.OrderID
  GROUP BY YearMonth, oi.ProductID
)
SELECT
  ms.YearMonth,
  ms.ProductID,
  p.Name,
  ms.TotalQuantity,
  RANK() OVER (PARTITION BY ms.YearMonth ORDER BY ms.TotalQuantity DESC) AS SalesRank
FROM MonthlySales ms
JOIN Product p ON ms.ProductID = p.ProductID
ORDER BY ms.YearMonth, SalesRank;

